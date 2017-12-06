//=====================================================================================================
// MadgwickAHRS.c
//=====================================================================================================
//
// Implementation of Madgwick's IMU and AHRS algorithms.
// See: http://x-io.co.uk/open-source-imu-and-ahrs-algorithms/
//
// From the x-io website "Open-source resources available on this website are
// provided under the GNU General Public Licence unless an alternative licence
// is provided in source."
//
// Date			Author          Notesv
// 29/09/2011	SOH Madgwick    Initial release
// 02/10/2011	SOH Madgwick	Optimised for reduced CPU load
// 19/02/2012	SOH Madgwick	Magnetometer measurement is normalised
// 03/12/2017	Pratikto S H	Change MadgwickAHRS.c to MadgwickAHRS.cpp
//								make some functions that occurs both in IMU and MARG algorithm 
//								convert variable to array
//
//=====================================================================================================

//---------------------------------------------------------------------------------------------------
// Header files

//#include "stdafx.h"
#include "MadgwickAHRS.h"
#include <math.h>

//====================================================================================================
// Functions

//---------------------------------------------------------------------------------------------------
// AHRS algorithm update

void MadgwickAHRSupdate(float g[4], float a[4], float m[4]) {
	g[0] = 0;
	a[0] = 0;
	m[0] = 0;
	float s[4];
	float qDot[4];
	float hx, hy;
	float _2q0mx, _2q0my, _2q0mz, _2q1mx, _2bx, _2bz, _4bx, _4bz, _2q0, _2q1, _2q2, _2q3, _2q0q2, _2q2q3, q0q0, q0q1, q0q2, q0q3, q1q1, q1q2, q1q3, q2q2, q2q3, q3q3;

	// Use IMU algorithm if magnetometer measurement invalid (avoids NaN in magnetometer normalisation)
	if ((m[1] == 0.0f) && (m[2] == 0.0f) && (m[3] == 0.0f)) {
		MadgwickAHRSupdateIMU(g, a);
		return;
	}

	// Rate of change of quaternion from gyroscope
	qDot[0] = 0.5f * (-q[0] * g[1] - q[2] * g[2] - q[3] * g[3]);
//	qDot[0] = 0.5f * (-q0 * gx - q2 * gy - q3 * gz);
	qDot[1] = 0.5f * (q[0] * g[1] + q[2] * g[3] - q[3] * g[2]);
//	qDot[1] = 0.5f * (q0 * gx + q2 * gz - q3 * gy);
	qDot[2] = 0.5f * (q[0] * g[2] - q[1] * g[3] + q[3] * g[1]);
//	qDot[2] = 0.5f * (q0 * gy - q1 * gz + q3 * gx);
	qDot[3] = 0.5f * (q[0] * g[3] + q[1] * g[2] - q[2] * g[1]);
//	qDot[3] = 0.5f * (q0 * gz + q1 * gy - q2 * gx);

	// Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
	if (!((a[1] == 0.0f) && (a[2] == 0.0f) && (a[3] == 0.0f))) {

		// Normalise accelerometer measurement
		normalise(a);

		// Normalise magnetometer measurement
		normalise(m);

		// Auxiliary variables to avoid repeated arithmetic
		_2q0mx = 2.0f * q[0] * m[1];
		_2q0my = 2.0f * q[0] * m[2];
		_2q0mz = 2.0f * q[0] * m[3];
		_2q1mx = 2.0f * q[1] * m[1];
		_2q0 = 2.0f * q[0];
		_2q1 = 2.0f * q[1];
		_2q2 = 2.0f * q[2];
		_2q3 = 2.0f * q[3];
		_2q0q2 = 2.0f * q[0] * q[2];
		_2q2q3 = 2.0f * q[2] * q[3];
		q0q0 = q[0] * q[0];
		q0q1 = q[0] * q[1];
		q0q2 = q[0] * q[2];
		q0q3 = q[0] * q[3];
		q1q1 = q[1] * q[1];
		q1q2 = q[1] * q[2];
		q1q3 = q[1] * q[3];
		q2q2 = q[2] * q[2];
		q2q3 = q[2] * q[3];
		q3q3 = q[3] * q[3];

		// Reference direction of Earth's magnetic field
	//	hx = mx * q0q0 - _2q0my * q3 + _2q0mz * q2 + mx * q1q1 + _2q1 * my * q2 + _2q1 * mz * q3 - mx * q2q2 - mx * q3q3;
		hx = m[1] * q0q0 - _2q0my * q[3] + _2q0mz * q[2] + m[1] * q1q1 + _2q1 * m[2] * q[2] + _2q1 * m[3] * q[3] - m[1] * q2q2 - m[1] * q3q3;
	//	hy = _2q0mx * q3 + my * q0q0 - _2q0mz * q1 + _2q1mx * q2 - my * q1q1 + my * q2q2 + _2q2 * mz * q3 - my * q3q3;
		hy = _2q0mx * q[3] + m[2] * q0q0 - _2q0mz * q[1] + _2q1mx * q[2] - m[2] * q1q1 + m[2] * q2q2 + _2q2 * m[3] * q[3] - m[2] * q3q3;
		_2bx = sqrt(hx * hx + hy * hy);
	//	_2bz = -_2q0mx * q2 + _2q0my * q1 + mz * q0q0 + _2q1mx * q3 - mz * q1q1 + _2q2 * my * q3 - mz * q2q2 + mz * q3q3;
		_2bz = -_2q0mx * q[2] + _2q0my * q[1] + m[3] * q0q0 + _2q1mx * q[3] - m[3] * q1q1 + _2q2 * m[2] * q[3] - m[3] * q2q2 + m[3] * q3q3;
		_4bx = 2.0f * _2bx;
		_4bz = 2.0f * _2bz;

		// Gradient decent algorithm corrective step
	//	s[0] = -_2q2 * (2.0f * q1q3 - _2q0q2 - ax) + _2q1 * (2.0f * q0q1 + _2q2q3 - ay) - _2bz * q2 * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx) + (-_2bx * q3 + _2bz * q1) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my) + _2bx * q2 * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - mz);
		s[0] = -_2q2 * (2.0f * q1q3 - _2q0q2 - a[1]) + _2q1 * (2.0f * q0q1 + _2q2q3 - a[2]) - _2bz * q[2] * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - m[1]) + (-_2bx * q[3] + _2bz * q[1]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - m[2]) + _2bx * q[2] * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - m[3]);
	//	s[1] = _2q3 * (2.0f * q1q3 - _2q0q2 - ax) + _2q0 * (2.0f * q0q1 + _2q2q3 - ay) - 4.0f * q1 * (1 - 2.0f * q1q1 - 2.0f * q2q2 - az) + _2bz * q3 * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx) + (_2bx * q2 + _2bz * q0) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my) + (_2bx * q3 - _4bz * q1) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - mz);
		s[1] = _2q3 * (2.0f * q1q3 - _2q0q2 - a[1]) + _2q0 * (2.0f * q0q1 + _2q2q3 - a[2]) - 4.0f * q[1] * (1 - 2.0f * q1q1 - 2.0f * q2q2 - a[3]) + _2bz * q[3] * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - m[1]) + (_2bx * q[2] + _2bz * q[0]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - m[2]) + (_2bx * q[3] - _4bz * q[1]) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - m[3]);
	//	s[2] = -_2q0 * (2.0f * q1q3 - _2q0q2 - ax) + _2q3 * (2.0f * q0q1 + _2q2q3 - ay) - 4.0f * q2 * (1 - 2.0f * q1q1 - 2.0f * q2q2 - az) + (-_4bx * q2 - _2bz * q0) * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx) + (_2bx * q1 + _2bz * q3) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my) + (_2bx * q0 - _4bz * q2) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - mz);
		s[2] = -_2q0 * (2.0f * q1q3 - _2q0q2 - a[1]) + _2q3 * (2.0f * q0q1 + _2q2q3 - a[2]) - 4.0f * q[2] * (1 - 2.0f * q1q1 - 2.0f * q2q2 - a[3]) + (-_4bx * q[2] - _2bz * q[0]) * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - m[1]) + (_2bx * q[1] + _2bz * q[3]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - m[2]) + (_2bx * q[0] - _4bz * q[2]) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - m[3]);
	//	s[3] = _2q1 * (2.0f * q1q3 - _2q0q2 - ax) + _2q2 * (2.0f * q0q1 + _2q2q3 - ay) + (-_4bx * q3 + _2bz * q1) * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx) + (-_2bx * q0 + _2bz * q2) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my) + _2bx * q1 * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - mz);
		s[3] = _2q1 * (2.0f * q1q3 - _2q0q2 - a[1]) + _2q2 * (2.0f * q0q1 + _2q2q3 - a[2]) + (-_4bx * q[3] + _2bz * q[1]) * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - m[1]) + (-_2bx * q[0] + _2bz * q[2]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - m[2]) + _2bx * q[1] * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - m[3]);
		
		// normalise step magnitude
		normalise(s);

		// Apply feedback step
		feedbackStep(qDot, beta, s);
	}

	// Integrate rate of change of quaternion to yield quaternion
	integrateQdot(q, qDot);

	// Normalise quaternion
	normalise(q);	
}

//---------------------------------------------------------------------------------------------------
// IMU algorithm update

void MadgwickAHRSupdateIMU(float g[4], float a[4]) {
	float s[4];
	float qDot[4];
	float _2q0, _2q1, _2q2, _2q3, _4q0, _4q1, _4q2, _8q1, _8q2, q0q0, q1q1, q2q2, q3q3;

	// Rate of change of quaternion from gyroscope
	qDot[0] = 0.5f * (-q[1] * g[1] - q[2] * g[2] - q[3] * g[3]);
//	qDot[1] = 0.5f * (q0 * gx + q2 * gz - q3 * gy);
	qDot[1] = 0.5f * (q[0] * g[1] + q[2] * g[3] - q[3] * g[2]);
//	qDot[2] = 0.5f * (q0 * gy - q1 * gz + q3 * gx);
	qDot[2] = 0.5f * (q[0] * g[2] - q[1] * g[3] + q[3] * g[1]);
//	qDot[3] = 0.5f * (q0 * gz + q1 * gy - q2 * gx);
	qDot[3] = 0.5f * (q[0] * g[3] + q[1] * g[2] - q[2] * g[1]);

	// Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
	if (!((a[1] == 0.0f) && (a[2] == 0.0f) && (a[3] == 0.0f))) {

		// Normalise accelerometer measurement
		normalise(a);

		// Auxiliary variables to avoid repeated arithmetic
		_2q0 = 2.0f * q[0];
		_2q1 = 2.0f * q[1];
		_2q2 = 2.0f * q[2];
		_2q3 = 2.0f * q[3];
		_4q0 = 4.0f * q[0];
		_4q1 = 4.0f * q[1];
		_4q2 = 4.0f * q[2];
		_8q1 = 8.0f * q[1];
		_8q2 = 8.0f * q[2];
		q0q0 = q[0] * q[0];
		q1q1 = q[1] * q[1];
		q2q2 = q[2] * q[2];
		q3q3 = q[3] * q[3];

		// Gradient decent algorithm corrective step
	//	s[0] = _4q0 * q2q2 + _2q2 * ax + _4q0 * q1q1 - _2q1 * ay;
		s[0] = _4q0 * q2q2 + _2q2 * a[1] + _4q0 * q1q1 - _2q1 * a[2];
	//	s[1] = _4q1 * q3q3 - _2q3 * ax + 4.0f * q0q0 * q1 - _2q0 * ay - _4q1 + _8q1 * q1q1 + _8q1 * q2q2 + _4q1 * az;
		s[1] = _4q1 * q3q3 - _2q3 * a[1] + 4.0f * q0q0 * q[1] - _2q0 * a[2] - _4q1 + _8q1 * q1q1 + _8q1 * q2q2 + _4q1 * a[3];
	//	s[2] = 4.0f * q0q0 * q2 + _2q0 * ax + _4q2 * q3q3 - _2q3 * ay - _4q2 + _8q2 * q1q1 + _8q2 * q2q2 + _4q2 * az;
		s[2] = 4.0f * q0q0 * q[2] + _2q0 * a[1] + _4q2 * q3q3 - _2q3 * a[2] - _4q2 + _8q2 * q1q1 + _8q2 * q2q2 + _4q2 * a[3];
	//	s[3] = 4.0f * q1q1 * q3 - _2q1 * ax + 4.0f * q2q2 * q3 - _2q2 * ay;
		s[3] = 4.0f * q1q1 * q[3] - _2q1 * a[1] + 4.0f * q2q2 * q[3] - _2q2 * a[2];

		// normalise step magnitude
		normalise(s);

		// Apply feedback step
		feedbackStep(qDot, beta, s);
	}

	// Integrate rate of change of quaternion to yield quaternion
	integrateQdot(q, qDot);

	// Normalise quaternion
	normalise(q);
}

//---------------------------------------------------------------------------------------------------
// Fast inverse square-root
// See: http://en.wikipedia.org/wiki/Fast_inverse_square_root

float invSqrt(float x) {
	float halfx = 0.5f * x;
	float y = x;
	long i = *(long*)&y;
	i = 0x5f3759df - (i >> 1);
	y = *(float*)&i;
	y = y * (1.5f - (halfx * y * y));
	return y;
}

//---------------------------------------------------------------------------------------------------
// normalise

void normalise(float in[4]) {
	float recipNorm = 0;
	float SumOfSquare = 0;
	SumOfSquare: for (int i = 1; i < 4; i++) {
		SumOfSquare += (in[i] * in[i]);
	}
	if (in[0] != 0)
		SumOfSquare += (in[0] * in[0]);

	recipNorm = invSqrt(SumOfSquare);
	calculateQ1to3 : for (int i = 1; i < 3; i++) {
		in[i] *= recipNorm;
	}
	if (in[0] != 0)
		in[0] *= recipNorm;
	else
		in[0] = 0;

}

//---------------------------------------------------------------------------------------------------
// Apply feedback step

void feedbackStep(float qDot[4], float beta, float s[4]) {
	loopfeedbackStep : for (int i = 0; i < 4; i++) {
		qDot[i] -= beta * s[i];
	}
}

//---------------------------------------------------------------------------------------------------
// Integrate rate of change of quaternion to yield quaternion

void integrateQdot(float q[4], float qDot[4]) {
	loop_integrateQdot: for (int i = 0; i < 4; i++) {
		q[i] += qDot[i] * (1.0f / sampleFreq);
	}
}

//====================================================================================================
// END OF CODE
//====================================================================================================
