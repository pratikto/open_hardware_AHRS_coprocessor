#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
/*
 * Several BSP (and standard C) header files need to be included
 */
#include <stdlib.h> // Standard C functions, e.g. exit()
#include <stdbool.h> // Provides a Boolean data type for ANSI/ISO-C
#include "xparameters.h" // Parameter definitions for processor peripherals
#include "xscugic.h" // Processor interrupt controller device driver
#include "xmadgwick.h" // Device driver for HLS HW block
#include "xtmrctr.h"
#include "sensor.h"

/*
 * Parameter definitions
 */
#define timer0			0				//timer number 0
#define resetValue		0

#define use_interrupt 	1				//HLS interrupt
#define offset 			0
#define t 				1.0f / 50.0f	//sampling periode
#define B 				-1.0f / 30.0f	//HLS beta gain
#define IntrMask		1
#define set 1							//HLS set
#define setn 0							//HLS not set

/*
 * Define variables for the HLS block and interrupt controller instance data. The variables
 * will be passed to driver API calls as handles in the respective hardware.
 */
XMadgwick HlsMadgwick;				// HLS madgwick HW instance
XScuGic ScuGic;						//Interrupt Controller Instance
XScuGic_Config *ScuGic_cfg_ptr;
XTmrCtr timer;

/*
 * Define global variables to interface with the interrupt service routine (ISR).
 */
volatile static int RunHls = 0;
volatile static int ResultAvailHls = 0;
u32 count = 0;
//u32 count_old;

/*
 * Function declaration
 */
void madgwickHW(float *_g, float *_a, float *_m,	// MARG sensor input
				float *_q, float *_euler,			// orientation estimation output
				float _periode,						// sample periode
				float _negBeta,						// Beta constanta
				bool _reset);						// reset=1 -> assign different q, periode, or Beta
int timer_init(XTmrCtr * timer_ptr);
int hls_init(XMadgwick *hls_maccPtr);
void hls_start(void *InstancePtr);
void hls_isr(void *InstancePtr);
static void timer_isr(void * CallBackRef, u8 TmrCtrNumber);
int interrupt_init(
		XScuGic_Config 	*intr_cfg_ptr,
		XScuGic 		*intr_ptr,			//Interrupt Controller Instance
		XMadgwick 		*madgwick_ptr,		//HLS madgwick HW instance
		XTmrCtr 		*timer_ptr);		//Timer instance

/*
 * Modify main() to use the HLS device driver API and the functions defined above to test
 * the HLS peripheral hardware
 */
int main()
{
	print("Program to test communication with HLS madgwick peripheral in PL\n\r");
	const int num_tests = 1359;
	float euler_HW[3] = {0.0f, 0.0f, 0.0f},
		  q_HW[4]  = {1.0f, 0.0f, 0.0f, 0.0f},
		  M[3] = {0.0f, 0.0f, 0.0f},
 		  A[3] = {0.0f, 0.0f, 0.0f},
  		  G[3] = {0.0f, 0.0f, 0.0f};
	int i=0, j=0;
	int status;
	char* buffer;

	//Setup the coprocessor
	status = hls_init(&HlsMadgwick);
	if(status != XST_SUCCESS){
		print("HLS peripheral setup failed\n\r");
		exit(-1);
	}

	//Setup the timer
	status = timer_init(&timer);
	if(status != XST_SUCCESS){
		print("HLS peripheral setup failed\n\r");
		exit(-1);
	}

	//Setup the interrupt
	status = interrupt_init(ScuGic_cfg_ptr, &ScuGic, &HlsMadgwick, &timer);
	if(status != XST_SUCCESS){
		print("Interrupt setup failed\n\r");
		exit(-1);
	}

	for (i = 0; i < num_tests; i++) {

		for(j=0; j<3; j++){
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	M[j] = (float) magneto[i][j];
			A[j] = (float) accelero[i][j];
			G[j] = (float) gyro[i][j];
		}

		madgwickHW(G, A, M, q_HW, euler_HW, t, B, setn);

//		sprintf(buffer, "iter-%d \t:", i);
//		print(buffer);
//		sprintf(buffer, "%f,\t%f,\t%f,\t%f,\t%f,\t%f,\t%f,\t%u\n", q_HW[0], q_HW[1], q_HW[2], q_HW[3], euler_HW[0], euler_HW[1], euler_HW[2], count);
	   	sprintf(buffer, "%f,%f,%f,%f,%f,%f,%f,%u,\n", q_HW[0], q_HW[1], q_HW[2], q_HW[3], euler_HW[0], euler_HW[1], euler_HW[2], count);
	   	print(buffer);
	}
	return 0;
}

/*
 * Define a function to wrap all run-once API initialization function calls for the HLS block.
 */
int hls_init(XMadgwick *hls_maccPtr){
	XMadgwick_Config *cfgPtr;
	int status;
	cfgPtr = XMadgwick_LookupConfig(XPAR_MADGWICK_0_DEVICE_ID);	//Obtain the configuration information of the device by ID.
	if (!cfgPtr) {
		print("ERROR: Lookup of accelerator configuration failed.\n\r");
		return XST_FAILURE;
	}
	/*
	 * Initialize a device when an MMU is used in the system. In such a case the effective address
	 * of the AXI4-Lite slave is different from that defined in xparameters.h and API is required to
	 * initialize the device.
	 */
	status = XMadgwick_CfgInitialize(hls_maccPtr, cfgPtr);
	if (status != XST_SUCCESS) {
		print("ERROR: Could not initialize accelerator.\n\r");
		return XST_FAILURE;
	}
	return status;
}

/*
 * Define a helper function to wrap the HLS block API calls required to enable its interrupt
 * and start the block.
 */
void hls_start(void *InstancePtr){
	XMadgwick *pAccelerator = (XMadgwick *)InstancePtr; //hold the IP instance pointer
	/*
	 * Enable the interrupt source. There may be at most 2 interrupt sources (source 0 for ap_done
	 * and source 1 for ap_ready)
	 */
	//bit 0 => ap_done
	//bit 1 => ap_start
	XMadgwick_InterruptEnable(pAccelerator,IntrMask);
	/*
	 * Enable the interrupt output. Interrupt functions are available only if there is ap_start.
	 */
	XMadgwick_InterruptGlobalEnable(pAccelerator);
	/*
	 * Start the device. This function will assert the ap_start port on the device. Available only
	 * if there is ap_start port on the device
	 */
	XMadgwick_Start(pAccelerator);

	/*
	 * start timer
	 */
//	XTmrCtr_Reset(&timer, timer0);
	XTmrCtr_Start(&timer, timer0);
}

/*
 * An interrupt service routine is required in order for the processor to respond to an interrupt
 * generated by a peripheral.
 *
 * Each peripheral with an interrupt attached to the PS must have an ISR defined and
 * registered with the PS’s interrupt handler.
 *
 * The ISR is responsible for clearing the peripheral’s interrupt and, in this example, setting a
 * flag that indicates that a result is available for retrieval from the peripheral. In general, ISRs
 * should be designed to be lightweight and as fast as possible, essentially doing the
 * minimum necessary to service the interrupt. Tasks such as retrieving the data should be left
 * to the main application code.
 */
void hls_isr(void *InstancePtr){
	XMadgwick *pAccelerator = (XMadgwick *)InstancePtr;
	//Disable the global interrupt
	XMadgwick_InterruptGlobalDisable(pAccelerator);
	//Disable the local interrupt
	XMadgwick_InterruptDisable(pAccelerator,0xffffffff);
	// clear the local interrupt
	XMadgwick_InterruptClear(pAccelerator, IntrMask);
	ResultAvailHls = 1;
	// restart the core if it should run again
	if(RunHls){
		hls_start(pAccelerator);
	}
}

/*
 * AXI timer setup
 * */
int timer_init(XTmrCtr * timer_ptr) {

	// Initialise the AXI timer driver
	int Status;
	Status = XTmrCtr_Initialize(&timer, XPAR_AXI_TIMER_0_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		printf("Error occurred in XTmrCtr_Initialize\n\r");
		return XST_FAILURE;
	}
	// Enable the timer
//	XTmrCtr_Enable(XPAR_AXI_TIMER_0_BASEADDR, timer0); // <-- error???

	// Configure the reset value
	XTmrCtr_SetResetValue(&timer, timer0, resetValue);

	// Configure the interrupt handler for the timer
	XTmrCtr_SetHandler(&timer, (XTmrCtr_Handler)timer_isr, &timer);

	// Configure for capture mode
	// Allow old capture values to be overwritten before reading
//	u32 options = XTC_INT_MODE_OPTION | XTC_CAPTURE_MODE_OPTION | XTC_AUTO_RELOAD_OPTION;
	u32 options = XTC_INT_MODE_OPTION | XTC_CAPTURE_MODE_OPTION;
	XTmrCtr_SetOptions(&timer, timer0, options);

	return XST_SUCCESS;
}

static void timer_isr(void * CallBackRef, u8 TmrCtrNumber) {
	char *buffer;

	// Disabling the AXI timer interrupt
//	XTmrCtr_DisableIntr(XPAR_AXI_TIMER_0_BASEADDR, timer0);
	XTmrCtr_Stop(&timer, timer0);

	count = XTmrCtr_GetCaptureValue(&timer, timer0);

	//reset counter
	XTmrCtr_Reset(&timer, timer0);		//can't reset value ???
}
/*
 * Define a routine to setup the PS interrupt handler and register the HLS peripheral’s ISR.
 * This functions sets up the interrupt on the ARM.
 */
int interrupt_init(
		XScuGic_Config 	*intr_cfg_ptr,
		XScuGic 		*intr_ptr,			//Interrupt Controller Instance
		XMadgwick 		*madgwick_ptr,		//HLS madgwick HW instance
		XTmrCtr 		*timer_ptr			//timer instance
		){

	/*
	 * Initialise the GIC driver
	 */

	int result;

	intr_cfg_ptr= XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
	if (intr_cfg_ptr == NULL){
		print("Interrupt Configuration Lookup Failed\n\r");
		return XST_FAILURE;
	}

	result = XScuGic_CfgInitialize(
			intr_ptr,
			intr_cfg_ptr,
			intr_cfg_ptr->CpuBaseAddress);
	if(result != XST_SUCCESS){
		return result;
	}

	// self-test
	result = XScuGic_SelfTest(intr_ptr);
	if(result != XST_SUCCESS){
		return result;
	}

	// Initialize the exception handler
	Xil_ExceptionInit();

	// Register the exception handler
	Xil_ExceptionRegisterHandler(
			XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler)XScuGic_InterruptHandler,
			intr_ptr);

	//Enable the exception handler
	Xil_ExceptionEnable();

	/*
	 * Connect the Adder ISR to the exception table
	 */

	//Connect HLS madgwick interrupt to handler
	result = XScuGic_Connect(
			intr_ptr,
			XPAR_FABRIC_MADGWICK_0_INTERRUPT_INTR,
			(Xil_InterruptHandler)hls_isr,
			 madgwick_ptr);

	if(result != XST_SUCCESS){
		xil_printf("HLS madgwick ISR connection failed!");
		return result;
	}
	//Enable HLS madgwick interrupts in the controller
	XScuGic_Enable(intr_ptr,XPAR_FABRIC_MADGWICK_0_INTERRUPT_INTR);

	//Connect timer interrupt to handler
	XScuGic_Connect(
			intr_ptr,
			XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR,
			(Xil_InterruptHandler)timer_isr,
			&timer);

	if(result != XST_SUCCESS){
		xil_printf("HLS madgwick ISR connection failed!");
		return result;
	}
	//Enable timer interrupts in the controller
	XScuGic_Enable(intr_ptr, XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR);

	return XST_SUCCESS;
}

void madgwickHW(float *_g, float *_a, float *_m, float *_q, float *_euler, float _periode, float _negBeta, bool _reset){

	XMadgwick_Write_g_Words(&HlsMadgwick, offset, (int*)_g, XMadgwick_Get_g_Depth(&HlsMadgwick));
	XMadgwick_Write_a_Words(&HlsMadgwick, offset, (int*)_a, XMadgwick_Get_a_Depth(&HlsMadgwick));
	XMadgwick_Write_m_Words(&HlsMadgwick, offset, (int*)_m, XMadgwick_Get_m_Depth(&HlsMadgwick));
//	XMadgwick_Set_reset(&HlsMadgwick, *((u32*)&_reset));
	if(_reset){
		XMadgwick_Set_reset(&HlsMadgwick, *((u32*)&_reset));
		XMadgwick_Write_q_Words(&HlsMadgwick, offset, (int*)_q, XMadgwick_Get_q_Depth(&HlsMadgwick));
		XMadgwick_Set_periode(&HlsMadgwick, *((u32*)&_periode));
		XMadgwick_Set_negBeta(&HlsMadgwick, *((u32*)&_negBeta));
	}

	if (not XMadgwick_IsReady(&HlsMadgwick)){
   		print("!!! HLS peripheral is not ready! Exiting...\n\r");
   		exit(-1);
   	}

   	if (use_interrupt) { // use interrupt
   		hls_start(&HlsMadgwick);
//   		XTmrCtr_Start(&timer, timer0);
   		while(!ResultAvailHls)
   			; // spin
   		ResultAvailHls = 0;
   		XMadgwick_Read_q_Words(&HlsMadgwick, offset, (int*)_q, XMadgwick_Get_q_Depth(&HlsMadgwick));
   		XMadgwick_Read_euler_Words(&HlsMadgwick, offset, (int*)_euler, XMadgwick_Get_euler_Depth(&HlsMadgwick));
   	}
   	else { // Simple non-interrupt driven test
   		XMadgwick_Start(&HlsMadgwick);
   		do {
   			XMadgwick_Read_q_Words(&HlsMadgwick, offset, (int*)&_q, XMadgwick_Get_q_Depth(&HlsMadgwick));
   			XMadgwick_Read_euler_Words(&HlsMadgwick, offset, (int*)&_euler, XMadgwick_Get_euler_Depth(&HlsMadgwick));
   		} while (!XMadgwick_IsReady(&HlsMadgwick));
   		print("Detected HLS peripheral complete. Result received.\n\r");
   	}
}
