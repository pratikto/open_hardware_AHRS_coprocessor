#include "csv.h"
#include "MadgwickAHRS.h"
#include "iostream"
#include <math.h>

int main(){

	csv file;
	file.setDir("/media/toni/Data/open_hardware_AHRS_coprocessor/MadgwickAHRS_HW_development/");
	file.readFile("gold.float.64bit.csv");
	float temp[4];
	float q[4] = {1.0f, 0.0f, 0.0f, 0.0f};
	float euler[3] = {0.0f, 0.0f, 0.0f};
	float magneto[3], accelero[3], gyro[3];

	for(int i=0; i<file.getRow(); i++){
		for(int j = 0; j<3; j++){
			magneto[j] = file.read(i,j);
			gyro[j] = file.read(i,j+3);
			accelero[j] = file.read(i,j+6);
		}
		update(
				gyro,
				accelero,
				magneto,
				q,
				euler);

//		update(gyro, accelero, magneto, 1, q);
		file.addDataColl(i, 16, q, 4);
		file.addDataColl(i, 20, euler, 3);

		for (int f = 0; f<4; f++){
			cout <<q[f] <<"\t";
		}
		cout <<endl;
	}
	file.writeFile("output2.csv");
//	cout <<file.getRow();
//	cout <<file.getColl();

	return 0;
}
