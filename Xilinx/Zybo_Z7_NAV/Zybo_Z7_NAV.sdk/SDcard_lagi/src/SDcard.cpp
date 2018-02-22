/*
 * SDcard.cpp
 *
 *  Created on: Feb 21, 2018
 *      Author: toni
 */

#include "SDcard.h"

SDcard::SDcard() {
	// TODO Auto-generated constructor stub
//	int status = 0;
//	status = f_mount(&SD,path, 1);
//	if (status != 0) {
////		return XST_FAILURE;
//		xil_printf("fail to mount SD card!");
//	}
//	else
//		xil_printf("SD card! mounted");
}

SDcard::SDcard(char *_path, char *_filename) {
	// TODO Auto-generated constructor stub
	*path = *_path;
	result = f_mount(&SD,path, 1);
	if (result != 0) {
//		return XST_FAILURE;
		xil_printf("fail to mount SD card!");
	}
	else{
		xil_printf("SD card mounted!");
//		return XST_SUCCESS;
	}
}

int SDcard::mount(char *_path){
	result = f_mount(&SD,_path, 1);
	if (result != 0) {
		return XST_FAILURE;
		xil_printf("fail to mount SD card!");
	}
	else{
		xil_printf("SD card mounted!");
		return XST_SUCCESS;
	}
}

int SDcard::mount(){
	result = f_mount(&SD,path, 1);
	if (result != 0) {
		return XST_FAILURE;
		xil_printf("fail to mount SD card!");
	}
	else{
		xil_printf("SD card mounted!");
		return XST_SUCCESS;
	}
}

int SDcard::unmount(){
	result = f_mount(NULL,path, 1);
	if (result != 0) {
		return XST_FAILURE;
		xil_printf("fail to unmount SD card!");
	}
	else{
		xil_printf("SD card unmounted!");
		return XST_SUCCESS;
	}
}

void SDcard::setPath(char *_path){
	*path = *_path;
	xil_printf(path);
}

void SDcard::setFile(char *_filename){
	*filename = *_filename;
	xil_printf(filename);
}

SDcard::~SDcard() {
	// TODO Auto-generated destructor stub
}

