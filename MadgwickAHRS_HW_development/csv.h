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
#include <stdlib.h>     /* strtof */

using namespace std;

class csv {
	string dir = "/home/toni/Documents/vivado_projects/MadgwickAHRS/";
	string filename;
	ifstream fileread;
//	ofstream filewrite;
	vector< vector<string> > array;  // the 2D array
	vector<string> v;                // array of values for one line only
	int coll;
	int row;

public:
	csv();
	csv(string name);
	int getRow();
	int getColl();
	float read(int inRow, int inColl);
	void write();
	void write(string name);
	void setDir(string directory);

	virtual ~csv();
};

#endif /* CSV_H_ */
