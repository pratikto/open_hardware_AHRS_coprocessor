//=============================================================================================
// MadgwickAHRS.c
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
// 19/02/2012	SOH Madgwick	Magnetometer measurement is normalised
//
//=============================================================================================
//-------------------------------------------------------------------------------------------
// Header files
#include "MadgwickAHRS.h"

//-------------------------------------------------------------------------------------------
// Variable

//static float Q[4] = {1.0f, 0.0f, 0.0f, 0.0f};

//============================================================================================
// Functions

//
////-------------------------------------------------------------------------------------------
////
//void madgwick(float g[3], float a[3], float m[3], float q[4], float euler[3], float periode, bool *block_start, bool *q_done, bool *e_done)
//{
//	*block_start = 1;
//	*q_done = 0;
//	*e_done = 0;
//	float s[4];
//	float qDot[4];
//	float hx, hy;
//	float _2q0mx, _2q0my, _2q0mz, _2q1mx,
//		  _2bx, _2bz, _4bx, _4bz,
//		  _2q0, _2q1, _2q2, _2q3,
//		  _2q0q2, _2q2q3,
//		  q0q0,
//		  _4q0, _4q1, _4q2 ,_8q1, _8q2;
//
//	// Convert gyroscope degrees/sec to radians/sec
//	mulConstanta(g, rad2degConst);
//
//	// Rate of change of quaternion from gyroscope
//	Qmul(qDot, Q, g);
//	mulConstanta(qDot, 0.5f);
//
//
//	// Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
//	if(!((a[0] == 0.0f) && (a[1] == 0.0f) && (a[2] == 0.0f))) {
//
//		// Normalise accelerometer measurement
//		normType4(a);
//
//		// Auxiliary variables to avoid repeated arithmetic
//		_2q0 = Q[0] + Q[0];
//		_2q1 = Q[1] + Q[1];
//		_2q2 = Q[2] + Q[2];
//		_2q3 = Q[3] + Q[3];
//		q0q0 = Q[0] * Q[0];
//
//		// Use IMU algorithm if magnetometer measurement invalid (avoids NaN in magnetometer normalisation)
//		if((m[0] == 0.0f) && (m[1] == 0.0f) && (m[2] == 0.0f)) {
//
//			// Auxiliary variables to avoid repeated arithmetic
//			_4q0 = _2q0 + _2q0;
//			_4q1 = _2q1 + _2q1;
//			_4q2 = _2q2 + _2q2;
//
//			_8q1 = _4q1 + _4q1;
//			_8q2 = _4q2 + _4q2;
//
//			// Gradient decent algorithm corrective step
//			s[0] = _4q0 * Q2Q2 + _2q2 * a[0] + _4q0 * Q1Q1 - _2q1 * a[1];
//			s[1] = _4q1 * Q3Q3 - _2q3 * a[0] + 4.0f * q0q0 * Q[1] - _2q0 * a[1] - _4q1 + _8q1 * Q1Q1 + _8q1 * Q2Q2 + _4q1 * a[2];
//			s[2] = 4.0f * q0q0 * Q[2] + _2q0 * a[0] + _4q2 * Q3Q3 - _2q3 * a[1] - _4q2 + _8q2 * Q1Q1 + _8q2 * Q2Q2 + _4q2 * a[2];
//			s[3] = 4.0f * Q1Q1 * Q[3] - _2q1 * a[0] + 4.0f * Q2Q2 * Q[3] - _2q2 * a[1];
//
//		}
//		// MARG algorithm
//		else{
//
//			// Normalise magnetometer measurement
//			normType4(m);
//
//			// Auxiliary variables to avoid repeated arithmetic
//			_2q0mx = _2q0 * m[0];
//			_2q0my = _2q0 * m[1];
//			_2q0mz = _2q0 * m[2];
//			_2q1mx = _2q1 * m[0];
//			Q1Q3 = Q[1] * Q[3];
//			_2q0q2 = Q0Q2 + Q0Q2;
//			_2q2q3 = Q2Q3 + Q2Q3;
//
//			// Reference direction of Earth's magnetic field
//			hx = m[0] * q0q0 - _2q0my * Q[3] + _2q0mz * Q[2] + m[0] * Q1Q1 + _2q1 * m[1] * Q[2] + _2q1 * m[2] * Q[3] - m[0] * Q2Q2 - m[0] * Q3Q3;
//			hy = _2q0mx * Q[3] + m[1] * q0q0 - _2q0mz * Q[1] + _2q1mx * Q[2] - m[1] * Q1Q1 + m[1] * Q2Q2 + _2q2 * m[2] * Q[3] - m[1] * Q3Q3;
//			_2bx = hls::sqrtf(hx * hx + hy * hy);
//			_2bz = -_2q0mx * Q[2] + _2q0my * Q[1] + m[2] * q0q0 + _2q1mx * Q[3] - m[2] * Q1Q1 + _2q2 * m[1] * Q[3] - m[2] * Q2Q2 + m[2] * Q3Q3;
//			_4bx = 2.0f * _2bx;
//			_4bz = 2.0f * _2bz;
//
//			// Gradient decent algorithm corrective step
//			s[0] = -_2q2 * (2.0f * Q1Q3 - _2q0q2 - a[0]) + _2q1 * (2.0f * Q0Q1 + _2q2q3 - a[1]) - _2bz * Q[2] * (_2bx * (0.5f - Q2Q2 - Q3Q3) + _2bz * (Q1Q3 - Q0Q2) - m[0]) + (-_2bx * Q[3] + _2bz * Q[1]) * (_2bx * (Q1Q2 - Q0Q3) + _2bz * (Q0Q1 + Q2Q3) - m[1]) + _2bx * Q[2] * (_2bx * (Q0Q2 + Q1Q3) + _2bz * (0.5f - Q1Q1 - Q2Q2) - m[2]);
//			s[1] = _2q3 * (2.0f * Q1Q3 - _2q0q2 - a[0]) + _2q0 * (2.0f * Q0Q1 + _2q2q3 - a[1]) - 4.0f * Q[1] * (1 - 2.0f * Q1Q1 - 2.0f * Q2Q2 - a[2]) + _2bz * Q[3] * (_2bx * (0.5f - Q2Q2 - Q3Q3) + _2bz * (Q1Q3 - Q0Q2) - m[0]) + (_2bx * Q[2] + _2bz * Q[0]) * (_2bx * (Q1Q2 - Q0Q3) + _2bz * (Q0Q1 + Q2Q3) - m[1]) + (_2bx * Q[3] - _4bz * Q[1]) * (_2bx * (Q0Q2 + Q1Q3) + _2bz * (0.5f - Q1Q1 - Q2Q2) - m[2]);
//			s[2] = -_2q0 * (2.0f * Q1Q3 - _2q0q2 - a[0]) + _2q3 * (2.0f * Q0Q1 + _2q2q3 - a[1]) - 4.0f * Q[2] * (1 - 2.0f * Q1Q1 - 2.0f * Q2Q2 - a[2]) + (-_4bx * Q[2] - _2bz * Q[0]) * (_2bx * (0.5f - Q2Q2 - Q3Q3) + _2bz * (Q1Q3 - Q0Q2) - m[0]) + (_2bx * Q[1] + _2bz * Q[3]) * (_2bx * (Q1Q2 - Q0Q3) + _2bz * (Q0Q1 + Q2Q3) - m[1]) + (_2bx * Q[0] - _4bz * Q[2]) * (_2bx * (Q0Q2 + Q1Q3) + _2bz * (0.5f - Q1Q1 - Q2Q2) - m[2]);
//			s[3] = _2q1 * (2.0f * Q1Q3 - _2q0q2 - a[0]) + _2q2 * (2.0f * Q0Q1 + _2q2q3 - a[1]) + (-_4bx * Q[3] + _2bz * Q[1]) * (_2bx * (0.5f - Q2Q2 - Q3Q3) + _2bz * (Q1Q3 - Q0Q2) - m[0]) + (-_2bx * Q[0] + _2bz * Q[2]) * (_2bx * (Q1Q2 - Q0Q3) + _2bz * (Q0Q1 + Q2Q3) - m[1]) + _2bx * Q[1] * (_2bx * (Q0Q2 + Q1Q3) + _2bz * (0.5f - Q1Q1 - Q2Q2) - m[2]);
//		}
//
//		// normalise step magnitude
//		normType4(s);
//
//		// Apply feedback step
//		mulConstanta(s, negBeta);
//		add2vector(qDot, s);
//	}
//
//	// Integrate rate of change of quaternion to yield quaternion
//	mulConstanta(qDot, periode);
//	add2vector(Q, qDot);
//
//	// Normalise quaternion
//	normType4(Q);
//
////	q = Q;
//
//	*q_done = not *q_done;
//
//	loop_assign_q : for (int i=0; i<4; i++){
//		q[i]=Q[i];
//	}
//
//	Q0Q1 = Q[0] * Q[1];
//	Q0Q2 = Q[0] * Q[2];
//	Q0Q3 = Q[0] * Q[3];
//
//	Q1Q2 = Q[1] * Q[2];
//	Q1Q3 = Q[1] * Q[3];
//
//	Q2Q3 = Q[2] * Q[3];
//
//	Q1Q1 = Q[1] * Q[1];
//	Q2Q2 = Q[2] * Q[2];
//	Q3Q3 = Q[3] * Q[3];
//
//	euler[0] = hls::atan2f(Q0Q1 + Q2Q3, 0.5f - Q1Q1 - Q2Q2);
//	euler[1] = hls::asinf(-2.0f * (Q1Q3 - Q0Q2));
//	euler[2] = hls::atan2f(Q1Q2 + Q0Q3, 0.5f - Q2Q2 - Q3Q3);
//
//	*e_done = not *e_done;
//	*block_start = not *block_start;
//}

//-------------------------------------------------------------------------------------------
//
void madgwick1(float _g[3], float _a[3], float _m[3], float _q[4], float euler[3], float periode, bool *block_start, bool *q_done, bool *e_done)
{
	*block_start = 1;
	*q_done = 0;
	*e_done = 0;
	float s[4];
	float qDot[4];
	float hx, hy;
	float _2q0mx, _2q0my, _2q0mz, _2q1mx,
		  _2bx, _2bz, _4bx, _4bz,
		  _2q0, _2q1, _2q2, _2q3,
		  _2q0q2, _2q2q3,
		  _4q0, _4q1, _4q2 ,_8q1, _8q2,
		  //tambahan
		  q0q1, q0q2, q0q3,
		  q1q2, q1q3,
		  q2q3,
		  q0q0, q1q1, q2q2, q3q3;
	float g[3], a[3], m[3], q[4];
//	float g[4] = {_g[0], _g[1], _g[2]};
//	float a[4] = {_a[0], _a[1], _a[2]};
//	float m[4] = {_m[0], _m[1], _g[2]};
//	float q[4] = {_q[0], _q[1], _q[2], _q[3]};

	assign_register : for (int i=0; i<3;i++){
		g[i] = _g[i];
		a[i] = _a[i];
		m[i] = _m[i];
		q[i] = _q[i];
	}
	q[3] = _q[3];

	// Auxiliary variables to avoid repeated arithmetic
	q0q0 = q[0] * q[0];
	q1q1 = q[1] * q[1];
	q2q2 = q[2] * q[2];
	q3q3 = q[3] * q[3];

	// Convert gyroscope degrees/sec to radians/sec
	mulConstanta(g, rad2degConst);

	// Rate of change of quaternion from gyroscope
	Qmul(qDot, q, g);
	mulConstanta(qDot, 0.5f);


	// Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
	if(!((a[0] == 0.0f) && (a[1] == 0.0f) && (a[2] == 0.0f))) {

		// Normalise accelerometer measurement
		normType3(a);

		// Auxiliary variables to avoid repeated arithmetic
		_2q0 = q[0] + q[0];
		_2q1 = q[1] + q[1];
		_2q2 = q[2] + q[2];
		_2q3 = q[3] + q[3];

		// Use IMU algorithm if magnetometer measurement invalid (avoids NaN in magnetometer normalisation)
		if((m[0] == 0.0f) && (m[1] == 0.0f) && (m[2] == 0.0f)) {

			// Auxiliary variables to avoid repeated arithmetic
			_4q0 = _2q0 + _2q0;
			_4q1 = _2q1 + _2q1;
			_4q2 = _2q2 + _2q2;

			_8q1 = _4q1 + _4q1;
			_8q2 = _4q2 + _4q2;

			// Gradient decent algorithm corrective step
			s[0] = _4q0 * q2q2 + _2q2 * a[0] + _4q0 * q1q1 - _2q1 * a[1];
			s[1] = _4q1 * q3q3 - _2q3 * a[0] + 4.0f * q0q0 * q[1] - _2q0 * a[1] - _4q1 + _8q1 * q1q1 + _8q1 * q2q2 + _4q1 * a[2];
			s[2] = 4.0f * q0q0 * q[2] + _2q0 * a[0] + _4q2 * q3q3 - _2q3 * a[1] - _4q2 + _8q2 * q1q1 + _8q2 * q2q2 + _4q2 * a[2];
			s[3] = 4.0f * q1q1 * q[3] - _2q1 * a[0] + 4.0f * q2q2 * q[3] - _2q2 * a[1];

		}
		// MARG algorithm
		else{

			// Normalise magnetometer measurement
			normType3(m);

			// Auxiliary variables to avoid repeated arithmetic
			q0q1 = q[0] * q[1];
			q0q2 = q[0] * q[2];
			q0q3 = q[0] * q[3];
			_2q0mx = _2q0 * m[0];
			_2q0my = _2q0 * m[1];
			_2q0mz = _2q0 * m[2];
			_2q1mx = _2q1 * m[0];
			q1q2 = q[1] * q[2];
			q1q3 = q[1] * q[3];
			q2q3 = q[2] * q[3];
			_2q0q2 = q0q2 + q0q2;
			_2q2q3 = q2q3 + q2q3;

			// Reference direction of Earth's magnetic field
			hx = m[0] * q0q0 - _2q0my * q[3] + _2q0mz * q[2] + m[0] * q1q1 + _2q1 * m[1] * q[2] + _2q1 * m[2] * q[3] - m[0] * q2q2 - m[0] * q3q3;
			hy = _2q0mx * q[3] + m[1] * q0q0 - _2q0mz * q[1] + _2q1mx * q[2] - m[1] * q1q1 + m[1] * q2q2 + _2q2 * m[2] * q[3] - m[1] * q3q3;
			_2bx = hls::sqrtf(hx * hx + hy * hy);
			_2bz = -_2q0mx * q[2] + _2q0my * q[1] + m[2] * q0q0 + _2q1mx * q[3] - m[2] * q1q1 + _2q2 * m[1] * q[3] - m[2] * q2q2 + m[2] * q3q3;
			_4bx = 2.0f * _2bx;
			_4bz = 2.0f * _2bz;

			// Gradient decent algorithm corrective step
			s[0] = -_2q2 * (2.0f * q1q3 - _2q0q2 - a[0]) + _2q1 * (2.0f * q0q1 + _2q2q3 - a[1]) - _2bz * q[2] * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - m[0]) + (-_2bx * q[3] + _2bz * q[1]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - m[1]) + _2bx * q[2] * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - m[2]);
			s[1] = _2q3 * (2.0f * q1q3 - _2q0q2 - a[0]) + _2q0 * (2.0f * q0q1 + _2q2q3 - a[1]) - 4.0f * q[1] * (1 - 2.0f * q1q1 - 2.0f * q2q2 - a[2]) + _2bz * q[3] * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - m[0]) + (_2bx * q[2] + _2bz * q[0]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - m[1]) + (_2bx * q[3] - _4bz * q[1]) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - m[2]);
			s[2] = -_2q0 * (2.0f * q1q3 - _2q0q2 - a[0]) + _2q3 * (2.0f * q0q1 + _2q2q3 - a[1]) - 4.0f * q[2] * (1 - 2.0f * q1q1 - 2.0f * q2q2 - a[2]) + (-_4bx * q[2] - _2bz * q[0]) * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - m[0]) + (_2bx * q[1] + _2bz * q[3]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - m[1]) + (_2bx * q[0] - _4bz * q[2]) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - m[2]);
			s[3] = _2q1 * (2.0f * q1q3 - _2q0q2 - a[0]) + _2q2 * (2.0f * q0q1 + _2q2q3 - a[1]) + (-_4bx * q[3] + _2bz * q[1]) * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - m[0]) + (-_2bx * q[0] + _2bz * q[2]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - m[1]) + _2bx * q[1] * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - m[2]);
		}

		// normalise step magnitude
		normType4(s);

		// Apply feedback step
		mulConstanta(s, NEGBeta);
		add2vector(qDot, s);
	}

	// Integrate rate of change of quaternion to yield quaternion
	mulConstanta(qDot, periode);
	add2vector(q, qDot);

	// Normalise quaternion
	normType4(q);

	assign_q_out : for (int i=0; i<4; i++){
		_q[i] = q[i];
	}
	*q_done = not *q_done;

	q0q1 = q[0]*q[1];
	q0q2 = q[0]*q[2];
	q0q3 = q[0]*q[3];
	q1q3 = q[1]*q[3];
	q1q2 = q[1]*q[2];
	q2q3 = q[2]*q[3];

	q1q1 = q[1]*q[1];
	q2q2 = q[2]*q[2];
	q3q3 = q[3]*q[3];

	euler[0] = hls::atan2f(q0q1 + q2q3, 0.5f - q1q1 - q2q2);
	euler[1] = hls::asinf(-2.0f * (q1q3 - q0q2));
	euler[2] = hls::atan2f(q1q2 + q0q3, 0.5f - q2q2 - q3q3);

//	euler[0] = hls::atan2f(q[0]*q[1] + q[2]*q[3], 0.5f - q[1]*q[1] - q[2]*q[2]);
//	euler[1] = hls::asinf(-2.0f * (q[1]*q[3] - q[0]*q[2]));
//	euler[2] = hls::atan2f(q[1]*q[2] + q[0]*q[3], 0.5f - q[2]*q[2] - q[3]*q[3]);

//	euler[0] = hls::atan2f(2*q[1]*q[2] - 2*q[0]*q[3], 2*q[0]*q[0] + 2*q[1]*q[1] - 1);
//	euler[1] = hls::asinf(-2.0f * (q[1]*q[3] - q[0]*q[2]));
//	euler[2] = hls::atan2f(q[0]*q[1] - q[2]*q[3], 0.5f - q[0]*q[0] - q[3]*q[3]);
//
//	euler[0] = hls::atan2f(2*q[1]*q[2] - 2*q[0]*q[3], 2*q[0]*q[0] + 2*q[1]*q[1] - 1);
//	euler[1] = hls::asinf(-2.0f * (q[1]*q[3] - q[0]*q[2]));
//	euler[2] = hls::atan2f(q[0]*q[1] - q[2]*q[3], 0.5f - q[0]*q[0] - q[3]*q[3]);

	*e_done = not *e_done;
	*block_start = not *block_start;
}

//void madgwick2(float _g[3], float _a[3], float _m[3], float q_in[4], float q_out[4], float euler[3], float periode, bool *block_start, bool *q_done, bool *e_done)
//{
//	*block_start = 1;
//	*q_done = 0;
//	*e_done = 0;
////	float s[4];
////	float qDot[4];
////	float hx, hy;
////	float _2q0mx, _2q0my, _2q0mz, _2q1mx,
////		  _2bx, _2bz, _4bx, _4bz,
////		  _2q0, _2q1, _2q2, _2q3,
////		  _2q0q2, _2q2q3,
////		  _4q0, _4q1, _4q2 ,_8q1, _8q2,
////		  //tambahan
////		  q0q1, q0q2, q0q3,
////		  q1q2, q1q3,
////		  q2q3,
////		  q0q0, q1q1, q2q2, q3q3;
//
//	float temp[30];
//
//	/*
//	 * assign sensor
//	 * temp[0...2] -> gyro
//	 * temp[3...5] -> accelero
//	 * temp[6...7] -> magneto
//	 */
//	loop_sensor : for(int i=0; i++; i<3){
////		temp[i+0] = _g[i];
//		temp[i+3] = _a[i];
//		temp[i+6] = _m[i];
//	}
//
//	/*
//	 *Auxiliary variables to avoid repeated arithmetic
//	 *q0q0 -> temp[9]
//	 *q1q1 -> temp[10]
//	 *q2q2 -> temp[11]
//	 *q3q3 -> temp[12]
//	 */
//	loop_q_square :for(int i=0; i<4; i++){
//		temp[i+9] = q_in[i] * q_in[i];
//	}
//
//	// Convert gyroscope degrees/sec to radians/sec
//	mulConstanta(&temp[0], rad2degConst);
//
//	/*
//	 * Rate of change of quaternion from gyroscope
//	 * temp[13...16] -> qDot
//	 */
//	Qmul(&temp[13], q_in, _g);
//	mulConstanta(&temp[13], 0.5f);
//
//
//	// Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
//	if(!((temp[3] == 0.0f) && (temp[4] == 0.0f) && (temp[5] == 0.0f))) {
//
//		// Normalise accelerometer measurement
//		normType4(&temp[3]);
//
//		/*
//		 * Auxiliary variables to avoid repeated arithmetic
//		 * temp[17]-> _2q0
//		 * temp[18]-> _2q1
//		 * temp[19]-> _2q2
//		 * temp[20]-> _2q3
//		 */
//
//		loop_2q : for(int i=0; i<4; i++){
//			temp[i+17] = q_in[i] + q_in[i];
//		}
//
//		// Use IMU algorithm if magnetometer measurement invalid (avoids NaN in magnetometer normalisation)
//		if((temp[6] == 0.0f) && (temp[7] == 0.0f) && (temp[8] == 0.0f)) {
//
//			/*
//			 * Auxiliary variables to avoid repeated arithmetic
//			 * temp[0] -> _4q0
//	 		 * temp[1] -> _4q1
//			 * temp[2] -> _4q2
//	 		 * temp[21]-> _8q1
//			 * temp[22]-> _8q2
//			 * temp[24]-> s[0]
//			 * temp[25]-> s[1]
//			 * temp[26]-> s[2]
//			 * temp[27]-> s[3]
//			 */
//			loop_4q : for (int i=0; i<3; i++){
//				temp[i] = temp[i+17] + temp[i+17];
//			}
//
//			loop_8q : for (int i = 0; i<2; i++){
//				temp[i+21] = temp[i+1] + temp[i+1];
//			}
////			_4q0 = _2q0 + _2q0;
////			_4q1 = _2q1 + _2q1;
////			temp[2] = _2q2 + _2q2;
////
////			_8q1 = _4q1 + _4q1;
////			_8q2 = _4q2 + _4q2;
//
//			// Gradient decent algorithm corrective step
//			temp[23] = temp[0] * temp[11] + temp[19] * temp[3] + temp[0] * temp[10] - temp[18] * temp[4];
//			temp[24] = temp[1] * temp[12] - temp[20] * temp[3] + 4.0f * temp[9] * q_in[1] - temp[17] * temp[4] - temp[1] + temp[21] * temp[10] + temp[21] * temp[11] + temp[1] * temp[5];
//			temp[25] = 4.0f * temp[9] * q_in[2] + temp[17] * temp[3] + temp[2] * temp[12] - temp[20] * temp[4] - temp[2] + temp[22] * temp[10] + temp[22] * temp[11] + temp[2] * temp[5];
//			temp[26]= 4.0f * temp[10] * q_in[3] - temp[18] * temp[3] + 4.0f * temp[11] * q_in[3] - temp[19] * temp[4];
//
//		}
//		// MARG algorithm
//		else{
//
//			// Normalise magnetometer measurement
//			normType4(&temp[6]);
//
//			/*
//			 * Auxiliary variables to avoid repeated arithmetic
//			 * temp[0] -> q0q1
//			 * temp[1] -> q0q2
//			 * temp[2] -> q0q3
//			 * temp[21]-> _2q0mx
//			 * temp[22]-> _2q0my
//			 * temp[23]-> _2q0mz
//			 * temp[24]-> s[0]
//			 * temp[25]-> s[1]
//			 * temp[26]-> s[2]
//			 * temp[27]-> s[3]
//			 * temp[28]-> _2q1mx
//			 * temp[29]-> q1q2
//			 * temp[30]-> q1q3
//			 * temp[31]-> q2q3
//			 * temp[32]-> _2q0q2
//			 * temp[33]-> _2q2q3
//			 * hx
//			 * hy
//			 * temp[34]-> _2bx
//			 * temp[35]-> _2bz
//			 * temp[36]-> _4bx
//			 * temp[37]-> _4bz
//			 */
//
//			loop_q0qx : for (int i=0; i<3; i++){
//				temp[i] = q_in[0] * q_in[i+1];
//			}
////			q0q1 = q_in[0] * q_in[1];
////			q0q2 = q_in[0] * q_in[2];
////			q0q3 = q_in[0] * q_in[3];
//
//			loop_2q0mx : for (int i=0; i<3; i++){
//				temp[i+21] = temp[17] * temp[i+6];
//			}
////			_2q0mx = _2q0 * m[0];
////			_2q0my = _2q0 * m[1];
////			_2q0mz = _2q0 * m[2];
//
//
//			temp[28] = temp[18] * temp[6];
//
//			loop_q1qx : for (int i=0; i<2; i++){
//				temp[i+29] = q_in[1] * q_in[i+2];
//			}
////			q1q2 = q_in[1] * q_in[2];
////			q1q3 = q_in[1] * q_in[3];
//
//			temp[31] = q_in[2] * q_in[3]; 	//q2q3
//			temp[32] = temp[1] + temp[1]; 	//_2q0q2
//			temp[33] = temp[31] + temp[31]; //_2q2q3
////			_2q0q2 = q0q2 + q0q2;
////			_2q2q3 = q2q3 + q2q3;
//
//			// Reference direction of Earth's magnetic field
//			temp[34] = temp[6] * temp[9] - _2q0my * q_in[3] + _2q0mz * q_in[2] + temp[6] * temp[10] + temp[18] * temp[7] * q_in[2] + temp[18] * m[2] * q_in[3] - temp[6] * temp[11] - temp[6] * temp[12];
//			temp[35] = _2q0mx * q_in[3] + temp[7] * temp[9] - _2q0mz * q_in[1] + _2q1mx * q_in[2] - temp[7] * temp[10] + temp[7] * temp[11] + temp[19] * m[2] * q_in[3] - temp[7] * temp[12];
//			_2bx = hls::sqrtf(hx * hx + hy * hy);
//			_2bz = -_2q0mx * q_in[2] + _2q0my * q_in[1] + m[2] * temp[9] + _2q1mx * q_in[3] - m[2] * temp[10] + temp[19] * temp[7] * q_in[3] - m[2] * temp[11] + m[2] * temp[12];
//			_4bx = 2.0f * _2bx;
//			_4bz = 2.0f * _2bz;
//
//			// Gradient decent algorithm corrective step
//			temp[23] = -temp[19] * (2.0f * q1q3 - _2q0q2 - temp[3]) + temp[18] * (2.0f * q0q1 + _2q2q3 - temp[4]) - _2bz * q_in[2] * (_2bx * (0.5f - temp[11] - temp[12]) + _2bz * (q1q3 - q0q2) - temp[6]) + (-_2bx * q_in[3] + _2bz * q_in[1]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - temp[7]) + _2bx * q_in[2] * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - temp[10] - temp[11]) - m[2]);
//			temp[24] = temp[20] * (2.0f * q1q3 - _2q0q2 - temp[3]) + _2q0 * (2.0f * q0q1 + _2q2q3 - temp[4]) - 4.0f * q_in[1] * (1 - 2.0f * temp[10] - 2.0f * temp[11] - temp[5]) + _2bz * q_in[3] * (_2bx * (0.5f - temp[11] - temp[12]) + _2bz * (q1q3 - q0q2) - temp[6]) + (_2bx * q_in[2] + _2bz * q_in[0]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - temp[7]) + (_2bx * q_in[3] - _4bz * q_in[1]) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - temp[10] - temp[11]) - m[2]);
//			temp[25] = -_2q0 * (2.0f * q1q3 - _2q0q2 - temp[3]) + temp[20] * (2.0f * q0q1 + _2q2q3 - temp[4]) - 4.0f * q_in[2] * (1 - 2.0f * temp[10] - 2.0f * temp[11] - temp[5]) + (-_4bx * q_in[2] - _2bz * q_in[0]) * (_2bx * (0.5f - temp[11] - temp[12]) + _2bz * (q1q3 - q0q2) - temp[6]) + (_2bx * q_in[1] + _2bz * q_in[3]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - temp[7]) + (_2bx * q_in[0] - _4bz * q_in[2]) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - temp[10] - temp[11]) - m[2]);
//			temp[26] = temp[18] * (2.0f * q1q3 - _2q0q2 - temp[3]) + temp[19] * (2.0f * q0q1 + _2q2q3 - temp[4]) + (-_4bx * q_in[3] + _2bz * q_in[1]) * (_2bx * (0.5f - temp[11] - temp[12]) + _2bz * (q1q3 - q0q2) - temp[6]) + (-_2bx * q_in[0] + _2bz * q_in[2]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - temp[7]) + _2bx * q_in[1] * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - temp[10] - temp[11]) - m[2]);
//		}
//
//		// normalise step magnitude
//		normType4(s);
//
//		// Apply feedback step
//		mulConstanta(s, negBeta);
//		add2vector(qDot, s);
//	}
//
//	// Integrate rate of change of quaternion to yield quaternion
//	mulConstanta(qDot, periode);
//	add2vector(q, qDot);
//
//	// Normalise quaternion
//	normType4(q);
//
//	*q_done = not *q_done;
//
//	q0q1 = q_in[0]*q_in[1];
//	q0q2 = q_in[0]*q_in[2];
//	q0q3 = q_in[0]*q_in[3];
//	q1q3 = q_in[1]*q_in[3];
//	q1q2 = q_in[1]*q_in[2];
//	q2q3 = q_in[2]*q[3];
//
//	temp[10] = q_in[1]*q_in[1];
//	temp[11] = q_in[2]*q_in[2];
//	temp[12] = q[3]*q[3];
//
//	euler[0] = hls::atan2f(q0q1 + q2q3, 0.5f - temp[10] - temp[11]);
//	euler[1] = hls::asinf(-2.0f * (q1q3 - q0q2));
//	euler[2] = hls::atan2f(q1q2 + q0q3, 0.5f - temp[11] - temp[12]);
//
////	euler[0] = hls::atan2f(q[0]*q[1] + q[2]*q[3], 0.5f - q[1]*q[1] - q[2]*q[2]);
////	euler[1] = hls::asinf(-2.0f * (q[1]*q[3] - q[0]*q[2]));
////	euler[2] = hls::atan2f(q[1]*q[2] + q[0]*q[3], 0.5f - q[2]*q[2] - q[3]*q[3]);
//
////	euler[0] = hls::atan2f(2*q[1]*q[2] - 2*q[0]*q[3], 2*q[0]*q[0] + 2*q[1]*q[1] - 1);
////	euler[1] = hls::asinf(-2.0f * (q[1]*q[3] - q[0]*q[2]));
////	euler[2] = hls::atan2f(q[0]*q[1] - q[2]*q[3], 0.5f - q[0]*q[0] - q[3]*q[3]);
////
////	euler[0] = hls::atan2f(2*q[1]*q[2] - 2*q[0]*q[3], 2*q[0]*q[0] + 2*q[1]*q[1] - 1);
////	euler[1] = hls::asinf(-2.0f * (q[1]*q[3] - q[0]*q[2]));
////	euler[2] = hls::atan2f(q[0]*q[1] - q[2]*q[3], 0.5f - q[0]*q[0] - q[3]*q[3]);
//
//	*e_done = not *e_done;
//	*block_start = not *block_start;
//}

//-------------------------------------------------------------------------------------------
//
void madgwick3(float gyro[3], float accelero[3], float magneto[3], float q_in[4], float q_out[4], float euler[3], float periode, bool *block_start, bool *q_done, bool *e_done)
{
	*block_start = 1;
	*q_done = 0;
	*e_done = 0;
	float s[4];
	float qDot[4];
	float hx, hy;
	float _2q0mx, _2q0my, _2q0mz, _2q1mx,
		  _2bx, _2bz, _4bx, _4bz,
		  _2q0, _2q1, _2q2, _2q3,
		  _2q0q2, _2q2q3,
		  _4q0, _4q1, _4q2 ,_8q1, _8q2,
		  //tambahan
		  q0q1, q0q2, q0q3,
		  q1q2, q1q3,
		  q2q3,
		  q0q0, q1q1, q2q2, q3q3;
	float g[3], a[3], m[3], q[4];
//	float g[3] = {_g[0], _g[1], _g[2]};
//	float a[3] = {_a[0], _a[1], _a[2]};
//	float m[3] = {_m[0], _m[1], _g[2]};
//	float q[4] = {q_in[0], q_in[1], q_in[2], q_in[3]};

	assign_register : for (int i=0; i<3;i++){
		g[i] = gyro[i];
		a[i] = accelero[i];
		m[i] = magneto[i];
		q[i] = q_in[i];
	}
	q[3] = q_in[3];

	// Auxiliary variables to avoid repeated arithmetic
	q0q0 = q[0] * q[0];
	q1q1 = q[1] * q[1];
	q2q2 = q[2] * q[2];
	q3q3 = q[3] * q[3];

	// Convert gyroscope degrees/sec to radians/sec
	mulConstanta(g, rad2degConst);

	// Rate of change of quaternion from gyroscope
	Qmul(qDot, q, g);
	mulConstanta(qDot, 0.5f);


	// Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
	if(!((a[0] == 0.0f) && (a[1] == 0.0f) && (a[2] == 0.0f))) {

		// Normalise accelerometer measurement
		normType3(a);

		// Auxiliary variables to avoid repeated arithmetic
		_2q0 = q[0] + q[0];
		_2q1 = q[1] + q[1];
		_2q2 = q[2] + q[2];
		_2q3 = q[3] + q[3];

		// Use IMU algorithm if magnetometer measurement invalid (avoids NaN in magnetometer normalisation)
		if((m[0] == 0.0f) && (m[1] == 0.0f) && (m[2] == 0.0f)) {

			// Auxiliary variables to avoid repeated arithmetic
			_4q0 = _2q0 + _2q0;
			_4q1 = _2q1 + _2q1;
			_4q2 = _2q2 + _2q2;

			_8q1 = _4q1 + _4q1;
			_8q2 = _4q2 + _4q2;

			// Gradient decent algorithm corrective step
			s[0] = _4q0 * q2q2 + _2q2 * a[0] + _4q0 * q1q1 - _2q1 * a[1];
			s[1] = _4q1 * q3q3 - _2q3 * a[0] + 4.0f * q0q0 * q[1] - _2q0 * a[1] - _4q1 + _8q1 * q1q1 + _8q1 * q2q2 + _4q1 * a[2];
			s[2] = 4.0f * q0q0 * q[2] + _2q0 * a[0] + _4q2 * q3q3 - _2q3 * a[1] - _4q2 + _8q2 * q1q1 + _8q2 * q2q2 + _4q2 * a[2];
			s[3] = 4.0f * q1q1 * q[3] - _2q1 * a[0] + 4.0f * q2q2 * q[3] - _2q2 * a[1];

		}
		// MARG algorithm
		else{

			// Normalise magnetometer measurement
			normType3(m);

			// Auxiliary variables to avoid repeated arithmetic
			q0q1 = q[0] * q[1];
			q0q2 = q[0] * q[2];
			q0q3 = q[0] * q[3];
			_2q0mx = _2q0 * m[0];
			_2q0my = _2q0 * m[1];
			_2q0mz = _2q0 * m[2];
			_2q1mx = _2q1 * m[0];
			q1q2 = q[1] * q[2];
			q1q3 = q[1] * q[3];
			q2q3 = q[2] * q[3];
			_2q0q2 = q0q2 + q0q2;
			_2q2q3 = q2q3 + q2q3;

			// Reference direction of Earth's magnetic field
			hx = m[0] * q0q0 - _2q0my * q[3] + _2q0mz * q[2] + m[0] * q1q1 + _2q1 * m[1] * q[2] + _2q1 * m[2] * q[3] - m[0] * q2q2 - m[0] * q3q3;
			hy = _2q0mx * q[3] + m[1] * q0q0 - _2q0mz * q[1] + _2q1mx * q[2] - m[1] * q1q1 + m[1] * q2q2 + _2q2 * m[2] * q[3] - m[1] * q3q3;
			_2bx = hls::sqrtf(hx * hx + hy * hy);
			_2bz = -_2q0mx * q[2] + _2q0my * q[1] + m[2] * q0q0 + _2q1mx * q[3] - m[2] * q1q1 + _2q2 * m[1] * q[3] - m[2] * q2q2 + m[2] * q3q3;
			_4bx = 2.0f * _2bx;
			_4bz = 2.0f * _2bz;

			// Gradient decent algorithm corrective step
			s[0] = -_2q2 * (2.0f * q1q3 - _2q0q2 - a[0]) + _2q1 * (2.0f * q0q1 + _2q2q3 - a[1]) - _2bz * q[2] * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - m[0]) + (-_2bx * q[3] + _2bz * q[1]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - m[1]) + _2bx * q[2] * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - m[2]);
			s[1] = _2q3 * (2.0f * q1q3 - _2q0q2 - a[0]) + _2q0 * (2.0f * q0q1 + _2q2q3 - a[1]) - 4.0f * q[1] * (1 - 2.0f * q1q1 - 2.0f * q2q2 - a[2]) + _2bz * q[3] * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - m[0]) + (_2bx * q[2] + _2bz * q[0]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - m[1]) + (_2bx * q[3] - _4bz * q[1]) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - m[2]);
			s[2] = -_2q0 * (2.0f * q1q3 - _2q0q2 - a[0]) + _2q3 * (2.0f * q0q1 + _2q2q3 - a[1]) - 4.0f * q[2] * (1 - 2.0f * q1q1 - 2.0f * q2q2 - a[2]) + (-_4bx * q[2] - _2bz * q[0]) * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - m[0]) + (_2bx * q[1] + _2bz * q[3]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - m[1]) + (_2bx * q[0] - _4bz * q[2]) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - m[2]);
			s[3] = _2q1 * (2.0f * q1q3 - _2q0q2 - a[0]) + _2q2 * (2.0f * q0q1 + _2q2q3 - a[1]) + (-_4bx * q[3] + _2bz * q[1]) * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - m[0]) + (-_2bx * q[0] + _2bz * q[2]) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - m[1]) + _2bx * q[1] * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - m[2]);
		}

		// normalise step magnitude
		normType4(s);

		// Apply feedback step
		mulConstanta(s, NEGBeta);
		add2vector(qDot, s);
	}

	// Integrate rate of change of quaternion to yield quaternion
	mulConstanta(qDot, periode);
	add2vector(q, qDot);

	// Normalise quaternion
	normType4(q);
//	q_out = {q[0], q[1], q[2], q[3]};
//	q_out = q;
	for (int i=0; i<4; i++){
		q_out[i] = q[i];
	}
	*q_done = not *q_done;

	q0q1 = q[0]*q[1];
	q0q2 = q[0]*q[2];
	q0q3 = q[0]*q[3];
	q1q3 = q[1]*q[3];
	q1q2 = q[1]*q[2];
	q2q3 = q[2]*q[3];

	q1q1 = q[1]*q[1];
	q2q2 = q[2]*q[2];
	q3q3 = q[3]*q[3];

	euler[0] = hls::atan2f(q0q1 + q2q3, 0.5f - q1q1 - q2q2);
	euler[1] = hls::asinf(-2.0f * (q1q3 - q0q2));
	euler[2] = hls::atan2f(q1q2 + q0q3, 0.5f - q2q2 - q3q3);

//	euler[0] = hls::atan2f(q[0]*q[1] + q[2]*q[3], 0.5f - q[1]*q[1] - q[2]*q[2]);
//	euler[1] = hls::asinf(-2.0f * (q[1]*q[3] - q[0]*q[2]));
//	euler[2] = hls::atan2f(q[1]*q[2] + q[0]*q[3], 0.5f - q[2]*q[2] - q[3]*q[3]);

//	euler[0] = hls::atan2f(2*q[1]*q[2] - 2*q[0]*q[3], 2*q[0]*q[0] + 2*q[1]*q[1] - 1);
//	euler[1] = hls::asinf(-2.0f * (q[1]*q[3] - q[0]*q[2]));
//	euler[2] = hls::atan2f(q[0]*q[1] - q[2]*q[3], 0.5f - q[0]*q[0] - q[3]*q[3]);
//
//	euler[0] = hls::atan2f(2*q[1]*q[2] - 2*q[0]*q[3], 2*q[0]*q[0] + 2*q[1]*q[1] - 1);
//	euler[1] = hls::asinf(-2.0f * (q[1]*q[3] - q[0]*q[2]));
//	euler[2] = hls::atan2f(q[0]*q[1] - q[2]*q[3], 0.5f - q[0]*q[0] - q[3]*q[3]);

	*e_done = not *e_done;
	*block_start = not *block_start;
}

//-------------------------------------------------------------------------------------------
//
void madgwick4(float g[3], float a[3], float m[3], float q[4], float euler[3], float periode, float negBeta, bool set, bool* q_done, bool* e_done)
{
	static float Q[4];
	static float Q0Q1, Q0Q2, Q0Q3,
				 Q1Q2, Q1Q3,
				 Q2Q3,
				 Q1Q1, Q2Q2, Q3Q3,
				 _periode,
				 _negBeta;
	*q_done = 0;
	*e_done = 0;
	float s[4];
	float qDot[4];
	float hx, hy;
	float _2q0mx, _2q0my, _2q0mz, _2q1mx,
		  _2bx, _2bz, _4bx, _4bz,
		  _2q0, _2q1, _2q2, _2q3,
		  _2q0q2, _2q2q3,
		  q0q0,
		  _4q0, _4q1, _4q2 ,_8q1, _8q2;

	if(set){
		assign_q_in : for(int i=0; i<4; i++)
			Q[i] = q[i];
		Q0Q1 = Q[0] * Q[1];
		Q0Q2 = Q[0] * Q[2];
		Q0Q3 = Q[0] * Q[3];

		Q1Q2 = Q[1] * Q[2];
		Q1Q3 = Q[1] * Q[3];

		Q2Q3 = Q[2] * Q[3];

		Q1Q1 = Q[1] * Q[1];
		Q2Q2 = Q[2] * Q[2];
		Q3Q3 = Q[3] * Q[3];
		_periode = periode;
		_negBeta = negBeta;
	}

	// Convert gyroscope degrees/sec to radians/sec
	mulConstanta(g, rad2degConst);

	// Rate of change of quaternion from gyroscope
	Qmul(qDot, Q, g);
	mulConstanta(qDot, 0.5f);


	// Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
	if(!((a[0] == 0.0f) && (a[1] == 0.0f) && (a[2] == 0.0f))) {

		// Normalise accelerometer measurement
		normType4(a);

		// Auxiliary variables to avoid repeated arithmetic
		_2q0 = Q[0] + Q[0];
		_2q1 = Q[1] + Q[1];
		_2q2 = Q[2] + Q[2];
		_2q3 = Q[3] + Q[3];
		q0q0 = Q[0] * Q[0];

		// Use IMU algorithm if magnetometer measurement invalid (avoids NaN in magnetometer normalisation)
		if((m[0] == 0.0f) && (m[1] == 0.0f) && (m[2] == 0.0f)) {

			// Auxiliary variables to avoid repeated arithmetic
			_4q0 = _2q0 + _2q0;
			_4q1 = _2q1 + _2q1;
			_4q2 = _2q2 + _2q2;

			_8q1 = _4q1 + _4q1;
			_8q2 = _4q2 + _4q2;

			// Gradient decent algorithm corrective step
			s[0] = _4q0 * Q2Q2 + _2q2 * a[0] + _4q0 * Q1Q1 - _2q1 * a[1];
			s[1] = _4q1 * Q3Q3 - _2q3 * a[0] + 4.0f * q0q0 * Q[1] - _2q0 * a[1] - _4q1 + _8q1 * Q1Q1 + _8q1 * Q2Q2 + _4q1 * a[2];
			s[2] = 4.0f * q0q0 * Q[2] + _2q0 * a[0] + _4q2 * Q3Q3 - _2q3 * a[1] - _4q2 + _8q2 * Q1Q1 + _8q2 * Q2Q2 + _4q2 * a[2];
			s[3] = 4.0f * Q1Q1 * Q[3] - _2q1 * a[0] + 4.0f * Q2Q2 * Q[3] - _2q2 * a[1];

		}
		// MARG algorithm
		else{

			// Normalise magnetometer measurement
			normType4(m);

			// Auxiliary variables to avoid repeated arithmetic
			_2q0mx = _2q0 * m[0];
			_2q0my = _2q0 * m[1];
			_2q0mz = _2q0 * m[2];
			_2q1mx = _2q1 * m[0];
			Q1Q3 = Q[1] * Q[3];
			_2q0q2 = Q0Q2 + Q0Q2;
			_2q2q3 = Q2Q3 + Q2Q3;

			// Reference direction of Earth's magnetic field
			hx = m[0] * q0q0 - _2q0my * Q[3] + _2q0mz * Q[2] + m[0] * Q1Q1 + _2q1 * m[1] * Q[2] + _2q1 * m[2] * Q[3] - m[0] * Q2Q2 - m[0] * Q3Q3;
			hy = _2q0mx * Q[3] + m[1] * q0q0 - _2q0mz * Q[1] + _2q1mx * Q[2] - m[1] * Q1Q1 + m[1] * Q2Q2 + _2q2 * m[2] * Q[3] - m[1] * Q3Q3;
			_2bx = hls::sqrtf(hx * hx + hy * hy);
//			_2bx = sqrtf(hx * hx + hy * hy);
			_2bz = -_2q0mx * Q[2] + _2q0my * Q[1] + m[2] * q0q0 + _2q1mx * Q[3] - m[2] * Q1Q1 + _2q2 * m[1] * Q[3] - m[2] * Q2Q2 + m[2] * Q3Q3;
			_4bx = 2.0f * _2bx;
			_4bz = 2.0f * _2bz;

			// Gradient decent algorithm corrective step
			s[0] = -_2q2 * (2.0f * Q1Q3 - _2q0q2 - a[0]) + _2q1 * (2.0f * Q0Q1 + _2q2q3 - a[1]) - _2bz * Q[2] * (_2bx * (0.5f - Q2Q2 - Q3Q3) + _2bz * (Q1Q3 - Q0Q2) - m[0]) + (-_2bx * Q[3] + _2bz * Q[1]) * (_2bx * (Q1Q2 - Q0Q3) + _2bz * (Q0Q1 + Q2Q3) - m[1]) + _2bx * Q[2] * (_2bx * (Q0Q2 + Q1Q3) + _2bz * (0.5f - Q1Q1 - Q2Q2) - m[2]);
			s[1] = _2q3 * (2.0f * Q1Q3 - _2q0q2 - a[0]) + _2q0 * (2.0f * Q0Q1 + _2q2q3 - a[1]) - 4.0f * Q[1] * (1 - 2.0f * Q1Q1 - 2.0f * Q2Q2 - a[2]) + _2bz * Q[3] * (_2bx * (0.5f - Q2Q2 - Q3Q3) + _2bz * (Q1Q3 - Q0Q2) - m[0]) + (_2bx * Q[2] + _2bz * Q[0]) * (_2bx * (Q1Q2 - Q0Q3) + _2bz * (Q0Q1 + Q2Q3) - m[1]) + (_2bx * Q[3] - _4bz * Q[1]) * (_2bx * (Q0Q2 + Q1Q3) + _2bz * (0.5f - Q1Q1 - Q2Q2) - m[2]);
			s[2] = -_2q0 * (2.0f * Q1Q3 - _2q0q2 - a[0]) + _2q3 * (2.0f * Q0Q1 + _2q2q3 - a[1]) - 4.0f * Q[2] * (1 - 2.0f * Q1Q1 - 2.0f * Q2Q2 - a[2]) + (-_4bx * Q[2] - _2bz * Q[0]) * (_2bx * (0.5f - Q2Q2 - Q3Q3) + _2bz * (Q1Q3 - Q0Q2) - m[0]) + (_2bx * Q[1] + _2bz * Q[3]) * (_2bx * (Q1Q2 - Q0Q3) + _2bz * (Q0Q1 + Q2Q3) - m[1]) + (_2bx * Q[0] - _4bz * Q[2]) * (_2bx * (Q0Q2 + Q1Q3) + _2bz * (0.5f - Q1Q1 - Q2Q2) - m[2]);
			s[3] = _2q1 * (2.0f * Q1Q3 - _2q0q2 - a[0]) + _2q2 * (2.0f * Q0Q1 + _2q2q3 - a[1]) + (-_4bx * Q[3] + _2bz * Q[1]) * (_2bx * (0.5f - Q2Q2 - Q3Q3) + _2bz * (Q1Q3 - Q0Q2) - m[0]) + (-_2bx * Q[0] + _2bz * Q[2]) * (_2bx * (Q1Q2 - Q0Q3) + _2bz * (Q0Q1 + Q2Q3) - m[1]) + _2bx * Q[1] * (_2bx * (Q0Q2 + Q1Q3) + _2bz * (0.5f - Q1Q1 - Q2Q2) - m[2]);
		}

		// normalise step magnitude
		normType4(s);

		// Apply feedback step
		mulConstanta(s, _negBeta);
		add2vector(qDot, s);
	}

	// Integrate rate of change of quaternion to yield quaternion
	mulConstanta(qDot, _periode);
	add2vector(Q, qDot);

	// Normalise quaternion
	normType4(Q);

//	q = Q;

	loop_assign_q_out : for (int i=0; i<4; i++){
		q[i]=Q[i];
	}

	*q_done = not *q_done;

	Q0Q1 = Q[0] * Q[1];
	Q0Q2 = Q[0] * Q[2];
	Q0Q3 = Q[0] * Q[3];

	Q1Q2 = Q[1] * Q[2];
	Q1Q3 = Q[1] * Q[3];

	Q2Q3 = Q[2] * Q[3];

	Q1Q1 = Q[1] * Q[1];
	Q2Q2 = Q[2] * Q[2];
	Q3Q3 = Q[3] * Q[3];

	euler[0] = hls::atan2f(Q0Q1 + Q2Q3, 0.5f - Q1Q1 - Q2Q2);
	euler[1] = hls::asinf(-2.0f * (Q1Q3 - Q0Q2));
	euler[2] = hls::atan2f(Q1Q2 + Q0Q3, 0.5f - Q2Q2 - Q3Q3);

	*e_done = not *e_done;
}


//-------------------------------------------------------------------------------------------
//
void madgwick5(float g[3], float a[3], float m[3], float q[4], float euler[3], float periode, float negBeta, bool reset, bool* start_cprsr, bool* q_done, bool* e_done)
{
	*q_done = 0;
	*e_done = 0;
	*start_cprsr = 1;

	static float Q[4] = {1.0f, 0.0f, 0.0f, 0.0f};
	static float _periode = 0.02f,
				 _negBeta = -1.0f/30.0f;

	static float Q0Q0 = 0.0f;
	static float Q0Q1 = 0.0f;
	static float Q0Q2 = 0.0f;
	static float Q0Q3 = 0.0f;

	static float Q1Q2 = 0.0f;
	static float Q1Q3 = 0.0f;

	static float Q2Q3 = 0.0f;

	static float Q1Q1 = 0.0f;
	static float Q2Q2 = 0.0f;
	static float Q3Q3 = 0.0f;

	float s[4];
	float qDot[4];
	float hx, hy;
	float _2q0mx, _2q0my, _2q0mz, _2q1mx,
		  _2bx, _2bz, _4bx, _4bz,
		  _2q0, _2q1, _2q2, _2q3,
		  _2q0q2, _2q2q3,
		  _4q0, _4q1, _4q2 ,_8q1, _8q2;

	if(reset){
		assign_q_in : for(int i=0; i<4; i++)
			Q[i] = q[i];
		Q0Q1 = Q[0] * Q[1];
		Q0Q2 = Q[0] * Q[2];
		Q0Q3 = Q[0] * Q[3];

		Q1Q2 = Q[1] * Q[2];
		Q1Q3 = Q[1] * Q[3];

		Q2Q3 = Q[2] * Q[3];

		Q1Q1 = Q[1] * Q[1];
		Q2Q2 = Q[2] * Q[2];
		Q3Q3 = Q[3] * Q[3];
		_periode = periode;
		_negBeta = negBeta;
	}

	// Convert gyroscope degrees/sec to radians/sec
	mulConstanta(g, rad2degConst);

	// Rate of change of quaternion from gyroscope
	Qmul(qDot, Q, g);
	mulConstanta(qDot, 0.5f);


	// Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
	if(!((a[0] == 0.0f) && (a[1] == 0.0f) && (a[2] == 0.0f))) {

		// Normalise accelerometer measurement
		normType4(a);

		// Auxiliary variables to avoid repeated arithmetic
		_2q0 = Q[0] + Q[0];
		_2q1 = Q[1] + Q[1];
		_2q2 = Q[2] + Q[2];
		_2q3 = Q[3] + Q[3];

		// Use IMU algorithm if magnetometer measurement invalid (avoids NaN in magnetometer normalisation)
		if((m[0] == 0.0f) && (m[1] == 0.0f) && (m[2] == 0.0f)) {

			// Auxiliary variables to avoid repeated arithmetic
			_4q0 = _2q0 + _2q0;
			_4q1 = _2q1 + _2q1;
			_4q2 = _2q2 + _2q2;

			_8q1 = _4q1 + _4q1;
			_8q2 = _4q2 + _4q2;

			// Gradient decent algorithm corrective step
			s[0] = _4q0 * Q2Q2 + _2q2 * a[0] + _4q0 * Q1Q1 - _2q1 * a[1];
			s[1] = _4q1 * Q3Q3 - _2q3 * a[0] + 4.0f * Q0Q0 * Q[1] - _2q0 * a[1] - _4q1 + _8q1 * Q1Q1 + _8q1 * Q2Q2 + _4q1 * a[2];
			s[2] = 4.0f * Q0Q0 * Q[2] + _2q0 * a[0] + _4q2 * Q3Q3 - _2q3 * a[1] - _4q2 + _8q2 * Q1Q1 + _8q2 * Q2Q2 + _4q2 * a[2];
			s[3] = 4.0f * Q1Q1 * Q[3] - _2q1 * a[0] + 4.0f * Q2Q2 * Q[3] - _2q2 * a[1];

		}
		// MARG algorithm
		else{

			// Normalise magnetometer measurement
			normType4(m);

			// Auxiliary variables to avoid repeated arithmetic
			_2q0mx = _2q0 * m[0];
			_2q0my = _2q0 * m[1];
			_2q0mz = _2q0 * m[2];
			_2q1mx = _2q1 * m[0];
			_2q0q2 = Q0Q2 + Q0Q2;
			_2q2q3 = Q2Q3 + Q2Q3;

			// Reference direction of Earth's magnetic field
			hx = m[0] * Q0Q0 - _2q0my * Q[3] + _2q0mz * Q[2] + m[0] * Q1Q1 + _2q1 * m[1] * Q[2] + _2q1 * m[2] * Q[3] - m[0] * Q2Q2 - m[0] * Q3Q3;
			hy = _2q0mx * Q[3] + m[1] * Q0Q0 - _2q0mz * Q[1] + _2q1mx * Q[2] - m[1] * Q1Q1 + m[1] * Q2Q2 + _2q2 * m[2] * Q[3] - m[1] * Q3Q3;
			_2bx = hls::sqrtf(hx * hx + hy * hy);
			_2bz = -_2q0mx * Q[2] + _2q0my * Q[1] + m[2] * Q0Q0 + _2q1mx * Q[3] - m[2] * Q1Q1 + _2q2 * m[1] * Q[3] - m[2] * Q2Q2 + m[2] * Q3Q3;
			_4bx = 2.0f * _2bx;
			_4bz = 2.0f * _2bz;

			// Gradient decent algorithm corrective step
			s[0] = -_2q2 * (2.0f * Q1Q3 - _2q0q2 - a[0]) + _2q1 * (2.0f * Q0Q1 + _2q2q3 - a[1]) - _2bz * Q[2] * (_2bx * (0.5f - Q2Q2 - Q3Q3) + _2bz * (Q1Q3 - Q0Q2) - m[0]) + (-_2bx * Q[3] + _2bz * Q[1]) * (_2bx * (Q1Q2 - Q0Q3) + _2bz * (Q0Q1 + Q2Q3) - m[1]) + _2bx * Q[2] * (_2bx * (Q0Q2 + Q1Q3) + _2bz * (0.5f - Q1Q1 - Q2Q2) - m[2]);
			s[1] = _2q3 * (2.0f * Q1Q3 - _2q0q2 - a[0]) + _2q0 * (2.0f * Q0Q1 + _2q2q3 - a[1]) - 4.0f * Q[1] * (1 - 2.0f * Q1Q1 - 2.0f * Q2Q2 - a[2]) + _2bz * Q[3] * (_2bx * (0.5f - Q2Q2 - Q3Q3) + _2bz * (Q1Q3 - Q0Q2) - m[0]) + (_2bx * Q[2] + _2bz * Q[0]) * (_2bx * (Q1Q2 - Q0Q3) + _2bz * (Q0Q1 + Q2Q3) - m[1]) + (_2bx * Q[3] - _4bz * Q[1]) * (_2bx * (Q0Q2 + Q1Q3) + _2bz * (0.5f - Q1Q1 - Q2Q2) - m[2]);
			s[2] = -_2q0 * (2.0f * Q1Q3 - _2q0q2 - a[0]) + _2q3 * (2.0f * Q0Q1 + _2q2q3 - a[1]) - 4.0f * Q[2] * (1 - 2.0f * Q1Q1 - 2.0f * Q2Q2 - a[2]) + (-_4bx * Q[2] - _2bz * Q[0]) * (_2bx * (0.5f - Q2Q2 - Q3Q3) + _2bz * (Q1Q3 - Q0Q2) - m[0]) + (_2bx * Q[1] + _2bz * Q[3]) * (_2bx * (Q1Q2 - Q0Q3) + _2bz * (Q0Q1 + Q2Q3) - m[1]) + (_2bx * Q[0] - _4bz * Q[2]) * (_2bx * (Q0Q2 + Q1Q3) + _2bz * (0.5f - Q1Q1 - Q2Q2) - m[2]);
			s[3] = _2q1 * (2.0f * Q1Q3 - _2q0q2 - a[0]) + _2q2 * (2.0f * Q0Q1 + _2q2q3 - a[1]) + (-_4bx * Q[3] + _2bz * Q[1]) * (_2bx * (0.5f - Q2Q2 - Q3Q3) + _2bz * (Q1Q3 - Q0Q2) - m[0]) + (-_2bx * Q[0] + _2bz * Q[2]) * (_2bx * (Q1Q2 - Q0Q3) + _2bz * (Q0Q1 + Q2Q3) - m[1]) + _2bx * Q[1] * (_2bx * (Q0Q2 + Q1Q3) + _2bz * (0.5f - Q1Q1 - Q2Q2) - m[2]);
		}

		// normalise step magnitude
		normType4(s);

		// Apply feedback step
		mulConstanta(s, _negBeta);
		add2vector(qDot, s);
	}

	// Integrate rate of change of quaternion to yield quaternion
	mulConstanta(qDot, _periode);
	add2vector(Q, qDot);

	// Normalise quaternion
	normType4(Q);

//	q = Q;

	loop_assign_q_out : for (int i=0; i<4; i++){
		q[i]=Q[i];
	}

	*q_done = not *q_done;

	Q0Q1 = Q[0] * Q[1];
	Q0Q2 = Q[0] * Q[2];
	Q0Q3 = Q[0] * Q[3];

	Q1Q2 = Q[1] * Q[2];
	Q1Q3 = Q[1] * Q[3];

	Q2Q3 = Q[2] * Q[3];

	Q1Q1 = Q[1] * Q[1];
	Q2Q2 = Q[2] * Q[2];
	Q3Q3 = Q[3] * Q[3];

	euler[0] = hls::atan2f(Q0Q1 + Q2Q3, 0.5f - Q1Q1 - Q2Q2);
	euler[1] = hls::asinf(-2.0f * (Q1Q3 - Q0Q2));
	euler[2] = hls::atan2f(Q1Q2 + Q0Q3, 0.5f - Q2Q2 - Q3Q3);

	*e_done = not *e_done;
	*start_cprsr = not *start_cprsr;
}
//-------------------------------------------------------------------------------------------
//
void normType4(float input[4]){
	float recipNorm;
	recipNorm = hls::rsqrtf(input[0] * input[0] + input[1] * input[1] + input[2] * input[2] + input[3] * input[3]);
	loop_norm: for(int i = 0; i<4; i++){
		input[i] *= recipNorm;
	}
}


//-------------------------------------------------------------------------------------------
//
void normType3(float input[3]){
	float recipNorm;
	recipNorm = hls::rsqrtf(input[0] * input[0] + input[1] * input[1] + input[2] * input[2]);
	loop_norm: for(int i = 0; i<3; i++){
		input[i] *= recipNorm;
	}
}

//-------------------------------------------------------------------------------------------
//
void Qmul(float result[4], float a[4], float b[3]){
	result[0] = (-a[1] * b[0] - a[2] * b[1] - a[3] * b[2]);
	result[1] = (a[0] * b[0] + a[2] * b[2] - a[3] * b[1]);
	result[2] = (a[0] * b[1] - a[1] * b[2] + a[3] * b[0]);
	result[3] = (a[0] * b[2] + a[1] * b[1] - a[2] * b[0]);
}

//-------------------------------------------------------------------------------------------
//
void addMulConstanta1(float result[4], float vector[4], float constanta){
	loop_addMullConstanta : for(int i=0; i<4; i++){
		result[i] += vector[i]*constanta;
	}
}

//-------------------------------------------------------------------------------------------
//
void mulConstanta(float vector[4], float constanta){
	loop_mulConstanta : for (int i=0; i<4; i++){
		vector[i] *= constanta;
	}
}

//-------------------------------------------------------------------------------------------
//
void mulConstanta1(float *vector, float constanta){
	loop_mulConstanta : for (int i=0; i<4; i++){
		*(vector+i) *= constanta;
	}
}
void add2vector(float a[4], float b[4]){
	loop_add2vector : for (int i=0; i<4; i++){
		a[i] += a[i] + b[i];
	}
}
