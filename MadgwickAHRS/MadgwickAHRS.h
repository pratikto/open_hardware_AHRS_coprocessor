#pragma once
//=====================================================================================================
// MadgwickAHRS.h
//=====================================================================================================
//
// Implementation of Madgwick's IMU and AHRS algorithms.
// See: http://www.x-io.co.uk/node/8#open_source_ahrs_and_imu_algorithms
//
// Date			Author          Notes
// 29/09/2011	SOH Madgwick    Initial release
// 02/10/2011	SOH Madgwick	Optimised for reduced CPU load
//
//=====================================================================================================
#ifndef MadgwickAHRS_h
#define MadgwickAHRS_h

#include "ap_fixed.h"

//---------------------------------------------------------------------------------------------------
// Definitions

#define sampleFreq	512.0f		// sample frequency in Hz
#define betaDef		0.1f		// 2 * proportional gain


typedef ap_fixed<6,15> acceleroType;
typedef ap_fixed<12,8> gyroType;
typedef ap_fixed<6,13> magnetoType;
typedef ap_fixed<12,15> tempType;

//----------------------------------------------------------------------------------------------------
// Variable declaration

float beta = betaDef;			// 2 * proportional gain (Kp)
float q[4] = { 1.0f, 0.0f, 0.0f, 0.0f }; // quaternion of sensor frame relative to auxiliary frame

//---------------------------------------------------------------------------------------------------
// Function declarations

//void MadgwickAHRSupdate(float g[4], float a[4], float m[4]);
void MadgwickAHRSupdate(gyroType g[4], acceleroType a[4], magnetoType m[4]);
void MadgwickAHRSupdateIMU(gyroType g[4], acceleroType a[4]);
void MadgwickAHRSupdateIMU(float g[4], float a[4]);
float invSqrt(float x);
void normalise(float in[4]);
void feedbackStep(float qDot[4], float beta, float s[4]);
void integrateQdot(float q[4], float qDot[4]);
#endif
//=====================================================================================================
// End of file
//=====================================================================================================
