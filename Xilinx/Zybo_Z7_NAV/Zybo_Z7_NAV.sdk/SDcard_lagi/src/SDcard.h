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
#include <string>
//#include <cstring>

//FATFS SD; 	// File System instance
//FIL fileInput;
class SDcard {
	FATFS SD;
	FIL fileInput;
	FRESULT result;
	char *path;
	char *filename;
	#ifdef __ICCARM__
	#pragma data_alignment = 32
//	u8 DestinationAddress[10*1024*1024];
//	u8 SourceAddress[10*1024*1024];
	u8 buffer[10*1024*1024];
	#pragma data_alignment = 4
	#else
//	u8 DestinationAddress[10*1024*1024] __attribute__ ((aligned(32)));
//	u8 SourceAddress[10*1024*1024] __attribute__ ((aligned(32)));
	u8 buffer[10*1024*1024] __attribute__ ((aligned(32)));
	#endif
public:
	SDcard();
	SDcard(char *_path, char *_filename);
	int mount();
	int mount(char *_path);
	int unmount();
	int format();
	void setPath(std::string _path);
	void setFile(std::string _filename);
	int accesFile(char *_filename, int reg);
	int openFile(char *_filename);
	int openFile();
	int createFile(std::string _filename);
	int createFile();
	int readFile(char *data, unsigned int length);
	int readBit(char *data);
	int writeFile(std::string data);
	int writeBit(char *data);
	int closeFile();
	virtual ~SDcard();
};

#endif /* SRC_SDCARD_H_ */
