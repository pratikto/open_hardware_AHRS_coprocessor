/*
 * csv.h
 *
 *  Created on: Dec 4, 2017
 *      Author: root
 */

#ifndef CSV_H_
#define CSV_H_

#include <string.h>
#include <sstream>
#include <iostream>
#include <vector>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

class csv {
//	string dir = "/home/toni/Documents/vivado_projects/MadgwickAHRS/";
	string dir;
	string filename;
	ifstream fileread;
//	ofstream filewrite;
//	vector< vector<string> > array;  // the 2D array
//	vector<string> v;                // array of values for one line only
	vector< vector<float> > array;  // the 2D array
	vector<float> v;                // array of values for one line only
	int collMax;
	int rowMax;

public:
	csv();
	csv(string name);
	int getRow();
	int getColl();
	float read(int inRow, int inColl);
	void addColl (int coll);
	void addDataColl (int row, int coll, float *array, int size);
//	void addDataColl (int row, std::vector<int>::iterator coll, float *array, int size);
//	void addDataColl (int row, vector< vector<float> >::iterator coll, float *array, int size);
//	void modDataColl (int row, std::vector<int>::iterator coll, float *array, int size);
	void addRow (int row);
	void addRowColl (int row, int coll);
	void writeFile(string name);
	void writeFile();
	void readFile(string name);
	void setDir(string directory);
	string getDir();

	virtual ~csv();
};

#endif /* CSV_H_ */
