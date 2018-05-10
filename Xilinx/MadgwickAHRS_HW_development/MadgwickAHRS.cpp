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
//
void madgwick(float g[3], float a[3], float m[3], float q[4], float euler[3], float periode, float negBeta, bool reset, bool* start_cprsr, bool* q_done, bool* e_done)
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
//		normType3(a);

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
//			normType3(m);

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
	float recipNorm=0;
	loop_recipNorm : for(int i=0; i<4;i++){
		recipNorm += (input[i] * input[i]);
	}
//	recipNorm = hls::rsqrtf(recipNorm);
	recipNorm = hls::rsqrtf(input[0] * input[0] + input[1] * input[1] + input[2] * input[2] + input[3] * input[3]);
	loop_norm: for(int i = 0; i<4; i++){
		input[i] *= recipNorm;
	}
}


//-------------------------------------------------------------------------------------------
//
void normType3(float input[3]){
	float recipNorm=0;
	loop_recipNorm : for(int i=0; i<3;i++){
		recipNorm += (input[i] * input[i]);
	}
//	recipNorm = hls::rsqrtf(input[0] * input[0] + input[1] * input[1] + input[2] * input[2]);
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
void mulConstanta(float vector[4], float constanta){
	loop_mulConstanta : for (int i=0; i<4; i++){
		vector[i] *= constanta;
	}
}

//-------------------------------------------------------------------------------------------
//
void add2vector(float a[4], float b[4]){
	loop_add2vector : for (int i=0; i<4; i++){
		a[i] += a[i] + b[i];
	}
}
