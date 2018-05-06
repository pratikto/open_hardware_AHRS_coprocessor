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
// #include "hls_math.h"
#include <HLS/math.h>
#include <HLS/extendedmath.h>
// #include "ap_int.h"
#include "HLS/hls.h"
#include "HLS/stdio.h"
#include "assert.h"

//-------------------------------------------------------------------------------------------
// Definitions
#define NEGBeta			-0.1f
#define rad2degConst	0.0174533

//-------------------------------------------------------------------------------------------
// Variable

//static float Q0Q1 = 0.0f;
//static float Q0Q2 = 0.0f;
//static float Q0Q3 = 0.0f;
//
//static float Q1Q2 = 0.0f;
//static float Q1Q3 = 0.0f;
//
//static float Q2Q3 = 0.0f;
//
//static float Q1Q1 = 0.0f;
//static float Q2Q2 = 0.0f;
//static float Q3Q3 = 0.0f;

//============================================================================================
// Functions declaration
void normType3(float input[4]);
void normType4(float input[3]);
void mulConstanta(float vector[4], float constanta);
void Qmul(float result[4], float a[4], float b[3]);
void add2vector(float a[4], float b[4]);
void add2vector1(float out[4], float a[4], float b[4]);
void madgwick(float g[3], float a[3], float m[3], float q[4], float euler[3], float periode, bool *block_start, bool *q_done, bool *e_done);
void madgwick1(float _g[3], float _a[3], float _m[3], float q[4], float euler[3], float periode, bool *block_start, bool *q_done, bool *e_done);
void madgwick2(float _g[3], float _a[3], float _m[3], float q_in[4], float q_out[4], float euler[3], float periode, bool *block_start, bool *q_done, bool *e_done);
void madgwick3(float gyro[3], float accelero[3], float magneto[3], float q_in[4], float q_out[4], float euler[3], float periode, bool *block_start, bool *q_done, bool *e_done);
void madgwick4(float g[3], float a[3], float m[3], float q[4], float euler[3], float periode, float negBeta, bool set, bool* q_done, bool* e_done);
void madgwick5(float g[3], float a[3], float m[3], float q[4], float euler[3], float periode, float negBeta, bool reset, bool* start_cprsr, bool* q_done, bool* e_done);
#endif
