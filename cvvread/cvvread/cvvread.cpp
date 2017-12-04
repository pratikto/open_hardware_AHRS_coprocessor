#include "stdafx.h"
#include <string>
#include <sstream>
#include <iostream>
#include <vector>
#include <fstream>

int main()
{
	using namespace std;

	ifstream in("example.csv");
	ofstream myfile;
	myfile.open("output.csv");
	string line, field;

	vector< vector<string> > array;  // the 2D array
	vector<string> v;                // array of values for one line only

	while (getline(in, line))    // get next line in file
	{
		v.clear();
		stringstream ss(line);

		while (getline(ss, field, ','))  // break line into comma delimitted fields
		{
			v.push_back(field);  // add each field to the 1D array
		}

		array.push_back(v);  // add the 1D array to the 2D array
	}

	// print out what was read in

	for (size_t i = 0; i<array.size(); ++i)
	{
		for (size_t j = 0; j<array[i].size(); ++j)
		{
			myfile << array[i][j] << ","; // (separate fields by ,)
		}
		myfile << "\n";
	}

	return 0;
}