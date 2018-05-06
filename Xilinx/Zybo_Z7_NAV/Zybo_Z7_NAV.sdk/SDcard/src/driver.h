/*
 * driver.h
 *
 *  Created on: Mar 31, 2018
 *      Author: toni
 */

#ifndef SRC_DRIVER_H_
#define SRC_DRIVER_H_

#include <stdio.h>
#include "xmadgwick.h" // Device driver for HLS HW block
#include <stdlib.h> // Standard C functions, e.g. exit()
#include <stdbool.h> // Provides a Boolean data type for ANSI/ISO-C
#include "xparameters.h" // Parameter definitions for processor peripherals
#include "xscugic.h" // Processor interrupt controller device driver
#include "xmadgwick.h" // Device driver for HLS HW block
#include "driver.h" //driver extension

///*
// * Define variables for the HLS block and interrupt controller instance data. The variables
// * will be passed to driver API calls as handles in the respective hardware.
// */
//XMadgwick HlsMadgwick;	// HLS Madgwick HW instance
//XScuGic ScuGic;		//Interrupt Controller Instance

/*
 * Define global variables to interface with the interrupt service routine (ISR).
 */
volatile static int RunHlsMadgwick = 0;
volatile static int ResultAvailHlsMadgwick = 0;

int hls_madgwick_init(XMadgwick *hls_madgwickPtr);
void hls_madgwick_start(void *InstancePtr);
void hls_macc_isr(void *InstancePtr);
int setup_interrupt(XScuGic _ScuGic, XMadgwick _HlsMadgwick);

u32 XMadgwick_Writef_g_Words(XMadgwick *InstancePtr, int offset, float *data, int length);
u32 XMadgwick_Readf_g_Words(XMadgwick *InstancePtr, int offset, float *data, int length);

u32 XMadgwick_Writef_a_Words(XMadgwick *InstancePtr, int offset, float *data, int length);
u32 XMadgwick_Readf_a_Words(XMadgwick *InstancePtr, int offset, float *data, int length);

u32 XMadgwick_Writef_m_Words(XMadgwick *InstancePtr, int offset, float *data, int length);
u32 XMadgwick_Readf_m_Words(XMadgwick *InstancePtr, int offset, float *data, int length);

u32 XMadgwick_Writef_q_Words(XMadgwick *InstancePtr, int offset, float *data, int length);
u32 XMadgwick_Readf_q_Words(XMadgwick *InstancePtr, int offset, float *data, int length);

u32 XMadgwick_Writef_euler_Words(XMadgwick *InstancePtr, int offset, float *data, int length);
u32 XMadgwick_Readf_euler_Words(XMadgwick *InstancePtr, int offset, float *data, int length);

#endif /* SRC_DRIVER_H_ */
