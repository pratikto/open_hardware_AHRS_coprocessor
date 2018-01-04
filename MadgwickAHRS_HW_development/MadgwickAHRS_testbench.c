#include "csv.h"
#include "MadgwickAHRS.h"
#include "iostream.h"
#include <math.h>

int main(){
	Madgwick filter;
	csv file;
	file.setDir("/media/toni/Data/digilent_contest/open_hardware_AHRS_coprocessor/MadgwickAHRS_original/madgwick_algorithm_C++/");
	file.readFile("gold.float.64bit.csv");
	float q[4], test[4]={0, 1, 2, 3};
	float magneto[3], accelero[3], gyro[3];

	for(int i=0; i<file.getRow(); i++){
		for(int j = 0; j<3; j++){
			magneto[j] = file.read(i,j);
			gyro[j] = file.read(i,j+3);
			accelero[j] = file.read(i,j+6);
		}
		filter.update(
				gyro[0], gyro[1], gyro[2],
				accelero[0], accelero[1], accelero[2],
				magneto[0], magneto[1], magneto[2]);
		q[0]=filter.q0; q[1]=filter.q1; q[2]=filter.q2; q[3]=filter.q3;

		file.addDataColl(i, 13, q, 4);
	}
	file.writeFile("output.csv");

	return 0;
}
