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
		xil_printf("fail to mount SD card!\r\n");
		xil_printf("ERROR : f_mount return %d\r\n", result);
	}
	else{
		xil_printf("SD card mounted!\r\n");
//		return XST_SUCCESS;
	}
}

int SDcard::mount(char *_path){
	result = f_mount(&SD,_path, 1);
	if (result != 0) {
		return XST_FAILURE;
		xil_printf("fail to mount SD card!\r\n");
		xil_printf("ERROR : f_mount return %d\r\n", result);
	}
	else{
		xil_printf("SD card mounted!\r\n");
		return XST_SUCCESS;
	}
}

int SDcard::mount(){
	result = f_mount(&SD,path, 1);
	if (result != 0) {
		return XST_FAILURE;
		xil_printf("fail to mount SD card!\r\n");
		xil_printf("ERROR : f_mount return %d\r\n", result);
	}
	else{
		xil_printf("SD card mounted!\r\n");
		return XST_SUCCESS;
	}
}

int SDcard::unmount(){
	result = f_mount(NULL,path, 1);
	if (result != 0) {
		return XST_FAILURE;
		xil_printf("fail to unmount SD card!\r\n");
		xil_printf("ERROR : f_unmount return %d\r\n", result);
	}
	else{
		xil_printf("SD card unmounted!\r\n");
		return XST_SUCCESS;
	}
}

int SDcard::format(){
	result = f_mkfs(path, 0, 0);
	if (result != FR_OK) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

void SDcard::setPath(std::string _path){
//	*path = *_path;
	path = const_cast<char*>(_path.c_str());
	xil_printf(path);
}

void SDcard::setFile(std::string _filename){
//	*filename = *_filename;
	filename = const_cast<char*>(_filename.c_str());
	xil_printf(filename);
}

int SDcard::accesFile(char *_filename, int reg){
	result = f_open(&fileInput, _filename, reg);
	if (result!=0) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

int SDcard::openFile(char *_filename){
	result = f_open(&fileInput, _filename, FA_OPEN_EXISTING | FA_WRITE | FA_READ);
	if (result!=0) {
		return XST_FAILURE;
		xil_printf("fail to open this file!\r\n");
		xil_printf("ERROR : f_open return %d\r\n", result);
	}
	xil_printf("file opened!\r\n");
	return XST_SUCCESS;
}

int SDcard::openFile(){
	result = f_open(&fileInput, filename, FA_OPEN_EXISTING | FA_WRITE | FA_READ);
	if (result!=0) {
		return XST_FAILURE;
		xil_printf("fail to open this file!\r\n");
		xil_printf("ERROR : f_open return %d\r\n", result);
	}
	xil_printf("file opened!\r\n");
	return XST_SUCCESS;
}

int SDcard::createFile(std::string _filename){
	filename = const_cast<char*>(_filename.c_str());
//	filename = (char *) _filename;
	result = f_open(&fileInput, filename, FA_CREATE_ALWAYS | FA_WRITE | FA_READ);
	if (result !=0) {
		return XST_FAILURE;
		xil_printf("fail to create this file!\r\n");
		xil_printf("ERROR : f_create return %d\r\n", result);
	}
//	result = f_open(&fileInput, _filename, FA_CREATE_ALWAYS);
	xil_printf("file created!\r\n");
	return XST_SUCCESS;
}

int SDcard::createFile(){
	result = f_open(&fileInput, filename, FA_CREATE_ALWAYS | FA_WRITE | FA_READ);
	if (result !=0) {
		return XST_FAILURE;
		xil_printf("fail to create this file!\r\n");
		xil_printf("ERROR : f_create return %d\r\n", result);
	}
//	result = f_open(&fileInput, _filename, FA_CREATE_ALWAYS);
	xil_printf("file created!\r\n");
	return XST_SUCCESS;
}

int SDcard::readFile(char *data, unsigned int length){
	unsigned int count;
	char *temp;
	result = f_read(&fileInput, data, length, &count);
	if (result !=0) {
//		return XST_FAILURE;
		xil_printf("fail to read File!\r\n");
		xil_printf("ERROR : f_read return %d\r\n", result);
	}
	//filtering unwanted characters
//	char temp[count];
	for(uint i=0; i<count; i++){
		temp[i]=data[i];
	}
	data = temp;
//	return XST_SUCCESS;
	return count;
}

int SDcard::readBit(char *data){
	return readFile(data, 1);
}

//int SDcard::writeFile(char *data, unsigned int length){
//int SDcard::writeFile(std::string data){
int SDcard::writeFile(std::string data){
	int length = data.length()+1;
//	buffer = data;
	unsigned int count;
	char *dataToWrite = const_cast<char*>(data.c_str());
	result = f_write(&fileInput, (const void*)dataToWrite, length, &count);
	if (result !=0) {
		return XST_FAILURE;
		xil_printf("fail to write File!\r\n");
		xil_printf("ERROR : f_read return %d\r\n", result);
	}
	else if (length = count){
		return 2;
	}

	return XST_SUCCESS;
}

int SDcard::writeBit(char *data){
	return writeFile(data);
}

int SDcard::closeFile(){
	return f_close(&fileInput);
}

SDcard::~SDcard() {
	// TODO Auto-generated destructor stub
}
