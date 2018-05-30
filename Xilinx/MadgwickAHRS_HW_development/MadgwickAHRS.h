//=============================================================================================
	// MadgwickAHRS.h
//=============================================================================================
//
// Implementation of Madgwick's IMU and AHRS algorithms.
// See: http://www.x-io.co.uk/open-source-imu-and-ahrs-algorithms/
//
// From the x-io website "Open-source resources available on this website are
// provided under the GNU General Public Licence unless an alternative licence
// is provided in source."
//
// Date			Author          Notes
// 29/09/2011	SOH Madgwick    Initial release
// 02/10/2011	SOH Madgwick	Optimised for reduced CPU load
//
//=============================================================================================
#ifndef MadgwickAHRS_h
#define MadgwickAHRS_h
#include "hls_math.h"
#include "ap_int.h"

//-------------------------------------------------------------------------------------------
// Definitions
#define NEGBeta			- 1.0f / 30.0f
#define rad2degConst	0.0174533
#define sampleFreqDef	50.0f          		// sample frequency in Hz
#define T				1.0f / sampleFreqDef

//============================================================================================
// Functions declaration
void normType4(float input[4]);
void mulConstanta(float result[4], float vector[4], float constanta);
//void mulConstanta(float result[6], float vector[6], float constanta);
//void Qmul(float result[4], float a[4], float b[3]);
void Qmul(float result[4], float a[4], float b[4]);
void add2vector(float a[4], float b[4]);
void mul2matrix(float resul[4], float j[4][3], float f[3]);
void madgwick(
		float g[3], float a[3], float m[3],
		float q[4], float euler[3],
		float periode,
		float negBeta,
		bool reset);
//void madgwick1(float g[3], float a[3], float m[3], float q[4], float euler[3], float periode, float negBeta, bool reset, bool* start_cprsr, bool* q_done, bool* e_done);
#endif
