#include <stdio.h>
#include <iostream>
#include <math.h>
#include "MadgwickAHRS.h"

//struct{
//	float magneto[4], accelero[4], gyro[4];
//}sensor;

int main () {
  const int    SAMPLES=600;
  FILE         *inputFile;
  FILE 		   *copy;
  inputFile = fopen("/home/toni/Documents/vivado_projects/MadgwickAHRSoriginal/marg.csv", "w");
  copy = fopen("/home/toni/Documents/vivado_projects/MadgwickAHRSoriginal/copy.csv", "w");
  //  sensor input;
  float magneto[3], accelero[3], gyro[3];

  for(int i=0; i<6901;i++){
	  fscanf (inputFile, "%f,%f,%f,%f,%f,%f,%f,%f,%f\n",
			  gyro[0], gyro[1], gyro[2],
			  accelero[0], accelero[1], accelero[2],
			  magneto[0], magneto[1], magneto[2]);
	  std::cout <<gyro[0] <<" "<< gyro[1] <<" "<< gyro[2]
		   <<" "<<accelero[0] <<" "<< accelero[1] <<" "<< accelero[2]
		   <<" "<<magneto[0] <<" "<< magneto[1] <<" "<< magneto[2] <<std::endl;
	  fprintf(copy,"%f,%f,%f,%f,%f,%f,%f,%f,%f\n",
			  gyro[0], gyro[1], gyro[2],
			  accelero[0], accelero[1], accelero[2],
			  magneto[0], magneto[1], magneto[2]);
  }
  fclose(inputFile);
  fclose(copy);
  return 0;
}
