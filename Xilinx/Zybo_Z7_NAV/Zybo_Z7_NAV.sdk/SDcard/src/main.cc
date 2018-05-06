/*
 * C++ Application
 */


#include "SDcard.h"
#include "platform.h"
#include "platform_config.h"
#include "sensor.h"

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
/*
 * Several BSP (and standard C) header files need to be included
 */
//#include <stdlib.h> // Standard C functions, e.g. exit()
//#include <stdbool.h> // Provides a Boolean data type for ANSI/ISO-C
//#include "xparameters.h" // Parameter definitions for processor peripherals
//#include "xscugic.h" // Processor interrupt controller device driver
//#include "xmadgwick.h" // Device driver for HLS HW block
#include "driver.h" //driver extension

#define offset 0
#define use_interrupt 1
#define sampleFreqDef	256.0f          		// sample frequency in Hz
#define periode	1.0f / sampleFreqDef
/*
 * Define variables for the HLS block and interrupt controller instance data. The variables
 * will be passed to driver API calls as handles in the respective hardware.
 */
XMadgwick HlsMadgwick;	// HLS Madgwick HW instance
XScuGic ScuGic;		//Interrupt Controller Instance

/*
 * Modify main() to use the HLS device driver API and the functions defined above to test
 * the HLS peripheral hardware
 */
int main()
{
//	print("cuk1");
	char *buffer;
	print("Program to test communication with HLS Madgwick peripheral in PL\n\r");
//	float *q, *e;
	float q[4], e[3];
	int status;
	int *temp;

//	xil_printf("float sensor\t\t\t%f\t%f\t%f\n", magneto[0][0], magneto[0][1], magneto[0][2]);
//	xil_printf(" sensor\t\t\t%f\t%f\t%f\n", 1, 2, 3);
	//Setup the matrix mult
	status = hls_madgwick_init(&HlsMadgwick);
	if(status != XST_SUCCESS){
		print("HLS peripheral setup failed\n\r");
		exit(-1);
	}

	//Setup the interrupt
	status = setup_interrupt(ScuGic, HlsMadgwick);
	if(status != XST_SUCCESS){
		print("Interrupt setup failed\n\r");
		exit(-1);
	}

	//set the input parameters of the HLS block
	for (int i=5500; i<5505;i++){
		XMadgwick_Set_periode(&HlsMadgwick, periode);

//		status = XMadgwick_Write_g_Words(&HlsMadgwick, offset, (int*) &gyro[i], 3);
		status = XMadgwick_Writef_g_Words(&HlsMadgwick, offset, &gyro[i][offset], 3);
		if(status != 3){
			print("initializing gyroscope failed\n\r");
			exit(-1);
		}
//		status = XMadgwick_Write_a_Words(&HlsMadgwick, offset, (int*) &accelero[i], 3);
		status = XMadgwick_Writef_a_Words(&HlsMadgwick, offset, &accelero[i][offset], 3);
		if(status != 3){
			print("initializing accelerometer failed\n\r");
			exit(-1);
		}
//		status = XMadgwick_Write_m_Words(&HlsMadgwick, offset, (int*) &magneto[i], 3);
		status = XMadgwick_Writef_m_Words(&HlsMadgwick, offset, &magneto[i][offset], 3);

		if(status != 3){
			print("initializing magnetometer failed\n\r");
			exit(-1);
		}
		if (XMadgwick_IsReady(&HlsMadgwick))
			print("HLS peripheral is ready. Starting... ");
		else {
			print("!!! HLS peripheral is not ready! Exiting...\n\r");
			exit(-1);
		}

		if (!use_interrupt) { // use interrupt
			hls_madgwick_start(&HlsMadgwick);
			while(!ResultAvailHlsMadgwick)
				; // spin
//			XMadgwick_Read_euler_Words(&HlsMadgwick, offset, (int*) &e, 3);
//			XMadgwick_Read_q_Words(&HlsMadgwick, offset, (int*) &q, 4);
			XMadgwick_Readf_euler_Words(&HlsMadgwick, offset, e, 3);
			XMadgwick_Readf_q_Words(&HlsMadgwick, offset, q, 4);
			print("Interrupt received from HLS HW.\n\r");
		}
		else { // Simple non-interrupt driven test
			XMadgwick_Start(&HlsMadgwick);
			do {
//				XMadgwick_Read_euler_Words(&HlsMadgwick, offset, (int*) &e, 3);
//				XMadgwick_Read_q_Words(&HlsMadgwick, offset, (int*) &q, 4);
				XMadgwick_Readf_euler_Words(&HlsMadgwick, offset, *&e, 3);
				XMadgwick_Readf_q_Words(&HlsMadgwick, offset, *&q, 4);
			} while (!XMadgwick_IsReady(&HlsMadgwick));
			print("Detected HLS peripheral complete. Result received.\n\r");
		}
//		xil_printf("no %d : %f\t%f\t%f\t%f\t%f\t%f\t%f\n", i, q[0], q[1], q[2], q[3], e[0], e[1], e[2]);
		sprintf(buffer, "no %d : %f\t%f\t%f\t%f\t%f\t%f\t%f\n", i, q[0], q[1], q[2], q[3], e[0], e[1], e[2]);
		printf(buffer);
	}
	print("finish");
	cleanup_platform();
	return status;
}
