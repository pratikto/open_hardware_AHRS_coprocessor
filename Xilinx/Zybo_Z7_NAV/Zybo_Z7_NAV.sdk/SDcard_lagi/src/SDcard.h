/*
 * SDcard.h
 *
 *  Created on: Feb 21, 2018
 *      Author: toni
 */

#ifndef SRC_SDCARD_H_
#define SRC_SDCARD_H_

#include "xil_printf.h"
#include "xparameters.h"
#include "xsdps.h"
#include "xil_printf.h"
#include "ff.h"
#include "xil_cache.h"

//FATFS SD; 	// File System instance
//FIL fileInput;
class SDcard {
	FATFS SD;
	char *path;
	char *filename;
	FIL fileInput;
	FRESULT result;
public:
	SDcard();
	SDcard(char *_path, char *_filename);
	int mount();
	int mount(char *_path);
	int unmount();
	void setPath(char *_path);
	void setFile(char *_filename);
	int openFile(char *_filename);

	virtual ~SDcard();
};

#endif /* SRC_SDCARD_H_ */
