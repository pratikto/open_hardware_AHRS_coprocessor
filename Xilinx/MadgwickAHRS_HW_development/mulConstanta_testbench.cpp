#include "MadgwickAHRS.h"
#include <stdio.h>
#include <stdlib.h>
//#include <random>

void mulConstantaSW(float vector[4], float constanta){
	loop_mulConstanta : for (int i=0; i<4; i++){
		vector[i] *= constanta;
	}
}
int main(){
   const int num_tests = 32;
   const int max_accum_len = 100;
   int a, b;
   float constanta, vectorHW[4], vectorSW[4];
//   int accum_hw, accum_sw;
   int i, j;
   int err_cnt = 0;
//   std::random_device rd;
//   std::mt19937_64 mt(rd());
//   std::uniform_real_distribution<double> distribution(0, M_PI/12);

   for (i = 0; i < num_tests; i++) {
      constanta = (float) (rand() % 10 + 1) / 3.0f;
      for (int j=0; j<4; j++){
    	  a = (rand() % max_accum_len + 1);
    	  b = (rand() % max_accum_len + 1);
    	  vectorHW[j] = (float)((float) a / (float) b);
    	  vectorSW[j] = vectorHW[j];
    	  printf("iter-%d %d\t%d\t%f\t%f\n" , i, a, b, vectorSW[i], constanta);
      }

      mulConstantaSW(vectorSW, constanta);
      mulConstanta(vectorHW, constanta);

      // Check HW result vs reference result
      if ((vectorHW[0] != vectorSW[0]) and (vectorHW[1] != vectorSW[1]) and (vectorHW[2] != vectorSW[2]) and (vectorHW[3] != vectorSW[3])) {
         printf("!!! ERROR mismatch on test #%d - ", i);
         printf("HW returned: %f\t%f\t%f\t%f\t\n; ", vectorHW[0], vectorHW[1], vectorHW[2], vectorHW[3]);
         printf("Expected: %f\t%f\t%f\t%f\t\n !!!\n", vectorSW[0], vectorSW[1], vectorSW[2], vectorSW[3]);
         err_cnt++;
      }
   }
   if (err_cnt)
      printf("\n!!! %d TESTS FAILED !!!\n\n", err_cnt);
   else
      printf("\n*** %d Tests Passed ***\n\n", num_tests);
   // Always return 0 on success
   return err_cnt;
}
