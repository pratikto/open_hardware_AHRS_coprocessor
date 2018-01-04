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
	string dir;
	string filename;
	ifstream fileread;
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
	void readFile(string name);
	void addDataColl (int row, int coll, float *data, int size);
	void write(string name);
	void write();
	void addRow (int row);
	void addColl (int coll);
	void addRowColl (int row, int coll);
	void writeFile(string name);
	void setDir(string directory);
	void writeFile();
	string getDir();
	virtual ~csv();
};

#endif /* CSV_H_ */
