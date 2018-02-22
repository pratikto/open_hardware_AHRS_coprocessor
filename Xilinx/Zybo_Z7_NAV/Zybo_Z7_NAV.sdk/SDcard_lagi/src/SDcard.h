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

//FATFS SD; 	// File System instance
//FIL fileInput;
class SDcard {
	FATFS SD;
	FIL fileInput;
	FRESULT result;
	char *path;
	char *filename;
public:
	SDcard();
	SDcard(char *_path, char *_filename);
	int mount();
	int mount(char *_path);
	int unmount();
	void setPath(std::string _path);
	void setFile(std::string _filename);
	int accesFile(char *_filename, int reg);
	int openFile(char *_filename);
	int openFile();
	int createFile(char *_filename);
	int createFile();
	int readFile(char *data, unsigned int length);
	int readBit(char *data);
	int writeFile(char *data, unsigned int length);
	int writeBit(char *data);
	int closeFile();
	virtual ~SDcard();
};

#endif /* SRC_SDCARD_H_ */
