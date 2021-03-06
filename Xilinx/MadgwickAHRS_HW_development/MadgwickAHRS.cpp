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
// 19/02/2012	SOH Madgwick	Magnetometer measurement is normalized
//
//=============================================================================================
//-------------------------------------------------------------------------------------------
// Header files
#include "MadgwickAHRS.h"

//-------------------------------------------------------------------------------------------
//
void madgwick(
		float g[3], float a[3], float m[3],
		float q[4], float euler[3],
		float periode,
		float negBeta,
		bool reset){
	static float Q[4] = {1.0f, 0.0f, 0.0f, 0.0f};
	static float _periode = T,
				 _negBeta = NEGBeta,
				 _reset = reset;

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

	float s1[4], s2[4], h[4];
	float qDot[4], temp1[4], temp2[4];
	float hx, hy;
	float _2bx, _2bz, _4bx, _4bz,
		  _2q0, _2q1, _2q2, _2q3;

	if(_reset){
		assign_q_in : for(int i=0; i<4; i++)
			Q[i] = q[i];
		Q0Q0 = Q[0] * Q[0];
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

	//copy g to s
	//just for temporary container
	s1[0] = 0.0f;
	s1[1] = g[0];
	s1[2] = g[1];
	s1[3] = g[2];

	// Convert gyroscope degrees/sec to radians/sec
	mulConstanta(s1, s1, rad2degConst);

	// Rate of change of quaternion from gyroscope
	Qmul(qDot, Q, s1);
	mulConstanta(qDot, qDot, 0.5f);

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

		// Auxiliary variables to avoid repeated arithmetic
		h[0] = _2q1 * Q[3] - _2q0 * Q[2] - a[0];
		h[1] = _2q0 * Q[1] + _2q2 * Q[3] - a[1];
		h[2] = 1 - 2.0f * Q1Q1 - 2.0f * Q2Q2 - a[2];

		// Gradient decent algorithm corrective step for IMU
		s1[0] = -_2q2 * h[0] + _2q1 * h[1];
		s1[1] =  _2q3 * h[0] + _2q0 * h[1] - 4.0f * Q[1] * h[2];
		s1[2] = -_2q0 * h[0] + _2q3 * h[1] - 4.0f * Q[2] * h[2];
		s1[3] =  _2q1 * h[0] + _2q2 * h[1];

		// MARG algorithm
		if((m[0] != 0.0f) && (m[1] != 0.0f) && (m[2] != 0.0f)) {

			// Normalise magnetometer measurement
			normType4(m);

			// Reference direction of Earth's magnetic field
			s2[0] 	= Q[0];
			temp1[0] = 0.0f;
			for (int i=1; i<4; i++){
				s2[i] 	= - Q[i];
				temp1[i]	= m[i-1];
			}

			Qmul(temp2,Q,temp1);
			Qmul(h,temp2,s2);
//			h[1] = (Q0Q0 + Q1Q1 - Q3Q3 - Q2Q2) * m[0] + (_2q1 * Q[2] - _2q0 * Q[3]) * m[1] + (_2q1 * Q[3] + _2q0 * Q[2]) * m[2];
//			h[2] = (_2q1 * Q[2] + _2q0 * Q[3]) * m[0] + (Q0Q0 + Q2Q2 - Q3Q3 - Q1Q1) * m[1] + (_2q2 * Q[3] - _2q0 * Q[1]) * m[2];
//			h[3] = (_2q1 * Q[3] - _2q0 * Q[2]) * m[0] + (_2q2 * Q[3] + _2q0 * Q[1]) * m[1] + (Q0Q0 + Q3Q3 - Q2Q2 - Q1Q1) * m[2];
			_2bx = 2.0f * hls::sqrtf(h[1] * h[1] + h[2] * h[2]);
			_2bz = 2.0f * h[3];
			_4bx = 2.0f * _2bx;
			_4bz = 2.0f * _2bz;
			
			// Auxiliary variables to avoid repeated arithmetic
			h[0] = (_2bx * (0.5f - Q2Q2 - Q3Q3) + _2bz * (Q1Q3 - Q0Q2) - m[0]);
			h[1] = (_2bx * (Q1Q2 - Q0Q3) + _2bz * (Q0Q1 + Q2Q3) - m[1]);
			h[2] = (_2bx * (Q0Q2 + Q1Q3) + _2bz * (0.5f - Q1Q1 - Q2Q2) - m[2]);
			
			// Gradient decent algorithm corrective step for MARG	
			s2[0] = - _2bz * Q[2] 				 * h[0] + 
					(-_2bx * Q[3] + _2bz * Q[1]) * h[1] +  
					_2bx * Q[2] 				 * h[2];

			s2[1] = _2bz * Q[3] 				 * h[0] + 
					( _2bx * Q[2] + _2bz * Q[0]) * h[1] + 
					(_2bx * Q[3] - _4bz * Q[1])  * h[2];
				
			s2[2] = (-_4bx * Q[2] - _2bz * Q[0]) * h[0] + 
					( _2bx * Q[1] + _2bz * Q[3]) * h[1] + 
					(_2bx * Q[0] - _4bz * Q[2]) * h[2];

			s2[3] = (-_4bx * Q[3] + _2bz * Q[1]) * h[0] + 
					(-_2bx * Q[0] + _2bz * Q[2]) * h[1] +  
					_2bx * Q[1] 				 * h[2];

			add2vector(s1, s2);
		}

		// normalise step magnitude
		normType4(s1);

		// Apply feedback step
		mulConstanta(s1,s1, _negBeta);
		add2vector(qDot, s1);
	}

	// Integrate rate of change of quaternion to yield quaternion
	mulConstanta(qDot, qDot, _periode);
	add2vector(Q, qDot);

	// Normalise quaternion
	normType4(Q);

	loop_assign_q_out : for (int i=0; i<4; i++){
		q[i]=Q[i];
	}

	Q0Q0 = Q[0] * Q[0];
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
}

//-------------------------------------------------------------------------------------------
//
void normType4(float input[4]){
	float recipNorm=0;
	loop_recipNorm : for(int i=0; i<4;i++){
		recipNorm += (input[i] * input[i]);
	}
	recipNorm = hls::rsqrtf(recipNorm);
	loop_norm: for(int i = 0; i<4; i++){
		input[i] *= recipNorm;
	}
}

//-------------------------------------------------------------------------------------------
//
void Qmul(float result[4], float q[4], float r[4]){
	float term[4][4];

	for (int i=1; i<4; i++)
		mulConstanta(term[i], q, r[i]);

	if(r[0] != 0.0f)
		mulConstanta(term[0], q, r[0]);
	else{
		for (int i=0; i<4; i++)
			term[0][i] = 0;
	}
	result[0] = term[0][0] - term[1][1] - term[2][2] - term[3][3];
	result[1] = term[0][1] + term[1][0] - term[2][3] + term[3][2];
	result[2] = term[0][2] + term[1][3] + term[2][0] - term[3][1];
	result[3] = term[0][3] - term[1][2] + term[2][1] + term[3][0];
}

//-------------------------------------------------------------------------------------------
//
void mulConstanta(float result[4], float vector[4], float constanta){
	loop_mulConstanta : for (int i=0; i<4; i++){
		result[i] = vector[i] * constanta;
	}
}

//-------------------------------------------------------------------------------------------
//
void add2vector(float a[4], float b[4]){
	loop_add2vector : for (int i=0; i<4; i++){
		a[i] += a[i] + b[i];
	}
}

//-------------------------------------------------------------------------------------------
//
void mul2matrix(float result[4], float j[4][3], float f[3]){
	loop_mul2matrix_outer : for(int row=0; row<4; row++){
		loop_mul2matrix_inner : for (int coll=0; coll<3; coll++){
			result[row] += j[row][coll] * f[coll];
		}
	}
}
