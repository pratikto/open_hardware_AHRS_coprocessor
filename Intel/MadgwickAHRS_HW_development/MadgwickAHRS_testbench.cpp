#include "csv.h"
#include "MadgwickAHRS.h"
#include "iostream"
#include <math.h>

#define sampleFreqDef	50.0f          		// sample frequency in Hz
#define periode	1.0f / sampleFreqDef
#define set 1
#define setn 0
#define minBeta - 1.0f / 30.0f
int main(){

	csv file;
	file.setDir("/media/toni/01D3B9198806E2F0/open_hardware_AHRS_coprocessor/MadgwickAHRS_original/madgwick_algorithm_matlab/");
	file.readFile("gold.float.minimum.csv");
	float temp[4];
	float q[4] = {1.0f, 0.0f, 0.0f, 0.0f};
	float euler[3] = {0.0f, 0.0f, 0.0f};
	float q1[4] = {1.0f, 0.0f, 0.0f, 0.0f};
	float euler1[3] = {0.0f, 0.0f, 0.0f};
	float magneto[3], accelero[3], gyro[3];
	bool q_done, e_done, start;
	ap_uint<1> q1_done, e1_done, start1;
	int i=0, j=0;

//	for(j = 0; j<3; j++){
//		magneto[j] = file.read(i,j);
//		gyro[j] = file.read(i,j+3);
//		accelero[j] = file.read(i,j+6);
//	}
//
//	madgwick4(gyro, accelero, magneto, q, euler, periode, minBeta, set, &q_done, &e_done);
//	file.addDataColl(i, 16, q, 4);
//	file.addDataColl(i, 20, euler, 3);
//	file.addDataColl(i, 23, q1, 4);
//	file.addDataColl(i, 27, euler1, 3);

//	for(i=0; i<file.getRow(); i++){
	for(i=0; i<10; i++){
		for(j = 0; j<3; j++){
			magneto[j] = file.read(i,j);
			gyro[j] = file.read(i,j+3);
			accelero[j] = file.read(i,j+6);
		}
//		madgwick1(gyro, accelero, magneto, q1, euler1, periode, &start1, &q1_done, &e1_done);
//		madgwick(gyro, accelero, magneto, q, euler, periode, &start, &q_done, &e_done);
//		madgwick3(gyro, accelero, magneto, q1, q1, euler1, periode, &start, &q_done, &e_done);
//		madgwick4(gyro, accelero, magneto, q, euler, periode, minBeta, setn, &q_done, &e_done);
		madgwick5(gyro, accelero, magneto, q, euler, periode, minBeta, setn, &start, &q_done, &e_done);

		file.addDataColl(i, 16, q1, 4);
		file.addDataColl(i, 20, euler1, 3);
		file.addDataColl(i, 23, q, 4);
		file.addDataColl(i, 27, euler, 3);

		for (int f = 0; f<4; f++){
			cout <<q[f] <<"\t";
		}
		for (int f = 0; f<3; f++){
			cout <<euler[f] <<"\t";
		}
		cout <<endl;
	}
	file.setDir("/media/toni/01D3B9198806E2F0/open_hardware_AHRS_coprocessor/Xilinx/MadgwickAHRS_HW_development/");
	file.writeFile("output2.csv");

	return 0;
}
