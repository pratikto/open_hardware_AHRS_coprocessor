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

//-------------------------------------------------------------------------------------------
// Definitions
#define negBeta			-0.1f
#define rad2degConst	0.0174533

//-------------------------------------------------------------------------------------------
// Variable
static float q0q1 = 0.0f;
static float q0q2 = 0.0f;
static float q0q3 = 0.0f;

static float q1q2 = 0.0f;
static float q1q3 = 0.0f;

static float q2q3 = 0.0f;

static float q1q1 = 0.0f;
static float q2q2 = 0.0f;
static float q3q3 = 0.0f;

//============================================================================================
// Functions declaration
void normType3(float input[4]);
void normType4(float input[3]);
void mulConstanta(float vector[4], float constanta);
void Qmul(float result[4], float a[4], float b[3]);
void add2vector(float a[4], float b[4]);
void madgwick(float g[3], float a[3], float m[3], float q[4], float euler[3], float periode, bool *block_start, bool *q_done, bool *e_done);

#endif
