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
//#include <math.h>
#include "hls_math.h"

//-------------------------------------------------------------------------------------------
// Definitions
#define sampleFreqDef	256.0f          		// sample frequency in Hz
#define invSampleFreq	1.0f / sampleFreqDef
#define negBeta			-0.1f
#define rad2degConst	0.0174533

//-------------------------------------------------------------------------------------------
// Variable

//static float Q[4] = {1.0f, 0.0f, 0.0f, 0.0f};
static float q0q1 = 0.0f;
static float q0q2 = 0.0f;
static float q0q3 = 0.0f;

static float q1q2 = 0.0f;
static float q1q3 = 0.0f;

static float q2q3 = 0.0f;

static float q1q1 = 0.0f;
static float q2q2 = 0.0f;
static float q3q3 = 0.0f;

//static bool firstInit = 1;

//============================================================================================
// Functions declaration
void conv2radPerSecond(float gyro[3]);
void normType1(float input[4]);
void normType2(float input[4]);
void normType3(float input[4]);
void normType4(float input[3]);
void computeQDot(float result[4], float Q[4], float gyro[3]);
void computeAngles(float q[4], float euler[3]);	//in radians
void addMulConstanta1(float result[4], float vector[4], float constanta);
void addMulConstanta2(float result[4], float vector[4], float constanta);
void mulConstanta(float vector[4], float constanta);
void updateType1(float g[3], float a[3], float m[3], float q[4], float euler[3]);
void updateType2(float g[3], float a[3], float m[3], float q[4], float euler[3]);
//void update(float g[3], float a[3], float m[3], bool sel, float out [4]);
void updateMARG(float g[3], float a[3], float m[3], float q[4], float euler[3]);
void updateIMU(float g[3], float a[3], float q[4], float euler[3]);
float getRoll();
float getPitch();
float getYaw();
float getRollRadians();
float getPitchRadians();
float getYawRadians();
float gradientDescents(float q[4], float g[3], float m[3], float s[4]);

#endif
