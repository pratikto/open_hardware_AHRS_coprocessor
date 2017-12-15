#include "csv.h"
#include "MadgwickAHRS.h"
#include "iostream"
#include <stdio.h>

int main(){
	FILE         *fp;
	csv file;
	file.setDir("/home/toni/Documents/vivado_projects/MadgwickAHRSoriginal/");
	file.readFile("marg.csv");
	string fileOutput = file.getDir() + "out.dat";
	fp=fopen(fileOutput.c_str(),"w");
//	float q[4] = {q0, q1, q2, q3};
	float q[4];
	float magneto[3], accelero[3], gyro[3];

	for(int i=0; i<file.getRow(); i++){
		for(int j = 0; j<3; j++){
			magneto[j] = file.read(i,j);
			accelero[j] = file.read(i,j+3);
			gyro[j] = file.read(i,j+6);
		}
		MadgwickAHRSupdate(
				gyro[0], gyro[1], gyro[2],
				accelero[0], accelero[1], accelero[2],
				magneto[0], magneto[1], magneto[2]);
//				file.read(i,0), file.read(i,1), file.read(i,2),
//				file.read(i,3), file.read(i,4), file.read(i,5),
//				file.read(i,6), file.read(i,7), file.read(i,0));
		q[0]=q0; q[1]=q1; q[2]=q2; q[3]=q3;
		file.addDataColl(i, q, 4);
		fprintf(fp, "%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f\n",
			  gyro[0], gyro[1], gyro[2],
			  accelero[0], accelero[1], accelero[2],
			  magneto[0], magneto[1], magneto[2],
			  q0, q1, q2, q3);
	}

//	int i = 0;
//	for(int j = 0; j<3; j++){
//		magneto[j] = file.read(i,j);
//		accelero[j+3] = file.read(i,j+3);
//		gyro[j+6] = file.read(i,j+6);
//		cout << magneto[j] <<" " <<accelero[j] <<" " <<gyro[]
//	}
//	MadgwickAHRSupdate(
//			gyro[0], gyro[1], gyro[2],
//			accelero[0], accelero[1], accelero[2],
//			magneto[0], magneto[1], magneto[2]);

	fclose(fp);
	file.writeFile("copy1.csv");
	return 0;
}
