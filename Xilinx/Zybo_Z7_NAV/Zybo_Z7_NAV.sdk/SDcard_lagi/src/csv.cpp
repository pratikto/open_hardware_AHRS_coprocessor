/*
 * csv.cpp
 *
 *  Created on: Dec 4, 2017
 *      Author: root
 */

#include "csv.h"

csv::csv() {
	// TODO Auto-generated constructor stub

}

csv::~csv() {
	// TODO Auto-generated destructor stub
}

csv::csv(string name){
	string line, field;

	filename=name;
	filename=dir+filename;
	fileread.open(filename.c_str());

	while (getline(fileread, line))    // get next line in file
	{
		v.clear();
		stringstream ss(line);

		while (getline(ss, field, ','))  // break line into comma delimitted fields
		{
			v.push_back(atof(field.c_str()));  // add each field to the 1D array
		}
		array.push_back(v);  // add the 1D array to the 2D array
	}

	rowMax = array.size();
	collMax = array[0].size();
}

void csv::readFile(string name){
	string line, field;
//	string line;
//	float field;
	filename=name;
	filename=dir+filename;
	fileread.open(filename.c_str());

	while (getline(fileread, line))    // get next line in file
	{
		v.clear();
		stringstream ss(line);

		while (getline(ss, field, ','))  // break line into comma delimitted fields
		{
			v.push_back(atof(field.c_str()));  // add each field to the 1D array
		}
		array.push_back(v);  // add the 1D array to the 2D array
	}
	rowMax = array.size();
	collMax = array[0].size();
}

int csv::getRow(){
	return rowMax;
}

int csv::getColl(){
	return collMax;
}

float csv::read(int inRow, int inColl){
	return array[inRow][inColl];
}

void csv::addDataColl (int row, int coll, float *data, int size){
	std::vector<float>::iterator it;
	it= array[row].begin()+coll;
	array[row].insert(it, data, data+size);
	collMax = array[row].size();
}

void csv::write(string name){
	ofstream filewrite;
	name=dir+name;
	filewrite.open(name.c_str());

	for (size_t i = 0; i<array.size(); ++i)
	{
		for (size_t j = 0; j<array[i].size(); ++j)
		{
			if(j==(array.size()-1))
				filewrite << array[i][j];
			else
				filewrite << array[i][j] << ","; // (separate fields by ,)
//				filewrite << array[i][j] << ","; // (separate fields by ,)
		}
		filewrite << "\n";
	}
}

void csv::write(){
	ofstream filewrite;
	filename=dir+filename;
	filewrite.open(filename.c_str());

	for (size_t i = 0; i<array.size(); ++i)
	{
		for (size_t j = 0; j<array[i].size(); ++j)
		{
			if(j==(array.size()-1))
				filewrite << array[i][j];
			else
				filewrite << array[i][j] << ","; // (separate fields by ,)
//				filewrite << array[i][j] << ","; // (separate fields by ,)
		}
		filewrite << "\n";
	}
}

void csv::addRow (int row){
	array.resize(row);
}

void csv::addColl (int coll){
	for (int i=0; i < getRow(); i++){
		array[i].resize(coll);
	}
}

void csv::addRowColl (int row, int coll){
	addColl(coll);
	addRow(row);
}

void csv::writeFile(string name){
	ofstream filewrite;
	name=dir+name;
	filewrite.open(name.c_str());
		for (size_t i = 0; i<array.size(); ++i)
	{
		for (size_t j = 0; j<array[i].size(); ++j)
		{
			if(j==(array.size()-1))
				filewrite << array[i][j];
			else
				filewrite << array[i][j] << ","; // (separate fields by ,)
//				filewrite << array[i][j] << ","; // (separate fields by ,)
		}
		filewrite << "\n";
	}
}

void csv::writeFile(){
	ofstream filewrite;
	filename=dir+filename;
	filewrite.open(filename.c_str());
	for (size_t i = 0; i<array.size(); ++i)
	{
		for (size_t j = 0; j<array[i].size(); ++j)
		{
			if(j==(array.size()-1))
				filewrite << array[i][j];
			else
				filewrite << array[i][j] << ","; // (separate fields by ,)
//				filewrite << array[i][j] << ","; // (separate fields by ,)
		}
		filewrite << "\n";
	}
}

void csv::setDir(string directory){
	dir = directory;
}

string csv::getDir(){
	return dir;
}
