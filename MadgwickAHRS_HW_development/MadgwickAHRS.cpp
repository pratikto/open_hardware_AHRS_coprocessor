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
//#include <math.h>
#include "hls_math.h"

//============================================================================================
// Functions

//-------------------------------------------------------------------------------------------
//
void update(float g[3], float a[3], float m[3], float q[4], float euler[3])
{
	float s[4] = {0.0f, 0.0f, 0.0f, 0.0f};
	float qDot[4] = {0.0f, 0.0f, 0.0f, 0.0f};
	float hx = 0, hy = 0;
	float _2q0mx, _2q0my, _2q0mz, _2q1mx, _2bx, _2bz, _4bx, _4bz, _2q0, _2q1, _2q2, _2q3,
		  _2q0q2, _2q2q3, q0q0, q0q1, q0q2, q0q3, q1q1, q1q2, q1q3, q2q2, q2q3, q3q3,
		  _4q0, _4q1, _4q2 ,_8q1, _8q2;

	// Convert gyroscope degrees/sec to radians/sec
	mulConstanta(g, rad2degConst);

	// Rate of change of quaternion from gyroscope
	computeQDot(qDot, q, g);


	// Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
	if(!((a[0] == 0.0f) && (a[1] == 0.0f) && (a[2] == 0.0f))) {

		// Normalise accelerometer measurement
//		normType1(_a);
//		normType2(_a);
//		normType3(_a);
		normType4(a);

		// Auxiliary variables to avoid repeated arithmetic
		_2q0 = q[0] + q[0];
		_2q1 = q[1] + q[1];
		_2q2 = q[2] + q[2];
		_2q3 = q[3] + q[3];
		q0q0 = q[0] * q[0];
		q1q1 = q[1] * q[1];
		q2q2 = q[2] * q[2];
		q3q3 = q[3] * q[3];

		// Use IMU algorithm if magnetometer measurement invalid (avoids NaN in magnetometer normalisation)
		if((m[0] == 0.0f) && (m[1] == 0.0f) && (m[2] == 0.0f)) {

			// Auxiliary variables to avoid repeated arithmetic
			_4q0 = _2q0 + _2q0;
			_4q1 = _2q1 + _2q1;
			_4q2 = _2q2 + _2q2;

//			_8q1 = _2q1 + _2q1 + _2q1 + _2q1;
			_8q1 = _4q1 + _4q1;
//			_8q2 = _2q2 + _2q2 + _2q2 + _2q2;
			_8q2 = _4q2 + _4q2;

			// Gradient decent algorithm corrective step
			s[0] = _4q0 * q2q2 + _2q2 * a[0] + _4q0 * q1q1 - _2q1 * a[1];
			s[1] = _4q1 * q3q3 - _2q3 * a[0] + 4.0f * q0q0 * q[1] - _2q0 * a[1] - _4q1 + _8q1 * q1q1 + _8q1 * q2q2 + _4q1 * a[2];
			s[2] = 4.0f * q0q0 * q[2] + _2q0 * a[0] + _4q2 * q3q3 - _2q3 * a[1] - _4q2 + _8q2 * q1q1 + _8q2 * q2q2 + _4q2 * a[2];
			s[3] = 4.0f * q1q1 * q[3] - _2q1 * a[0] + 4.0f * q2q2 * q[3] - _2q2 * a[1];

		}
		else{

			// Normalise magnetometer measurement
//			normType1(_m);
	//		normType2(_m);
//			normType3(_m);
			normType4(m);

			// Auxiliary variables to avoid repeated arithmetic
			_2q0mx = _2q0 * m[0];
			_2q0my = _2q0 * m[1];
			_2q0mz = _2q0 * m[2];
			_2q1mx = _2q1 * m[0];
			q0q1 = q[0] * q[1];
			q0q2 = q[0] * q[2];
			q0q3 = q[0] * q[3];
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
//		normType1(s);
//		normType2(s);
		normType3(s);

		// Apply feedback step
		addMulConstanta1(qDot, s, negBeta);
//		addMulConstanta2(qDot, s, negBeta);
	}

	// Integrate rate of change of quaternion to yield quaternion
	addMulConstanta1(q, qDot, invSampleFreq);
//	addMulConstanta2(q, qDot, invSampleFreq);

	// Normalise quaternion
//	normType1(q);
//	normType2(q);
	normType3(q);

	euler[0] = hls::atan2f(q[0]*q[1] + q[2]*q[3], 0.5f - q[1]*q[1] - q[2]*q[2]);
	euler[1] = hls::asinf(-2.0f * (q[1]*q[3] - q[0]*q[2]));
	euler[2] = hls::atan2f(q[1]*q[2] + q[0]*q[3], 0.5f - q[2]*q[2] - q[3]*q[3]);
}

//-------------------------------------------------------------------------------------------
//MARG algorithm update
void updateMARG(float g[3], float a[3], float m[3], float q[4], float euler[3])
{
//	float recipNorm;
	float _a[4] = {0, a[0], a[1], a[2]};
	float _m[4] = {0, m[0], m[1], m[2]};
	float s[4] = {0.0f, 0.0f, 0.0f, 0.0f};
	float qDot[4] = {0.0f, 0.0f, 0.0f, 0.0f};
	float hx = 0, hy = 0;
	float _2q0mx, _2q0my, _2q0mz, _2q1mx, _2bx, _2bz, _4bx, _4bz, _2q0, _2q1, _2q2, _2q3, _2q0q2, _2q2q3, q0q0, q0q1, q0q2, q0q3, q1q1, q1q2, q1q3, q2q2, q2q3, q3q3;
//	int anglesComputed = 0;

	// Use IMU algorithm if magnetometer measurement invalid (avoids NaN in magnetometer normalisation)
	if((m[0] == 0.0f) && (m[1] == 0.0f) && (m[2] == 0.0f)) {
		updateIMU(g, a, q, euler);
		return;
	}

	// Convert gyroscope degrees/sec to radians/sec
	conv2radPerSecond(g);

	// Rate of change of quaternion from gyroscope
	computeQDot(qDot, q, g);


	// Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
	if(!((a[0] == 0.0f) && (a[1] == 0.0f) && (a[2] == 0.0f))) {

		// Normalise accelerometer measurement
//		normType1(_a);
//		normType2(_a);
		normType3(_a);

		// Normalise magnetometer measurement
//		normType1(_m);
//		normType2(_m);
		normType3(_m);

		// Auxiliary variables to avoid repeated arithmetic
		_2q0mx = 2.0f * q[0] * m[0];
		_2q0my = 2.0f * q[0] * m[1];
		_2q0mz = 2.0f * q[0] * m[2];
		_2q1mx = 2.0f * q[1] * m[0];
		_2q0 = 2.0f * q[0];
		_2q1 = 2.0f * q[1];
		_2q2 = 2.0f * q[2];
		_2q3 = 2.0f * q[3];
		_2q0q2 = 2.0f * q[0] * q[2];
		_2q2q3 = 2.0f * q[2] * q[3];
//		q0q0 = hls::pow(q[0], 2);
		q0q0 = q[0] * q[0];
		q0q1 = q[0] * q[1];
		q0q2 = q[0] * q[2];
		q0q3 = q[0] * q[3];
//		q1q1 = hls::pow(q[1], 2);
		q1q1 = q[1] * q[1];
		q1q2 = q[1] * q[2];
		q1q3 = q[1] * q[3];
//		q2q2 = hls::pow(q[2], 2);
		q2q2 = q[2] * q[2];
		q2q3 = q[2] * q[3];
//		q3q3 = hls::pow(q[3], 2);
		q3q3 = q[3] * q[3];

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

		// normalise step magnitude
//		normType1(s);
//		normType2(s);
		normType3(s);

		// Apply feedback step
		addMulConstanta2(qDot, s, negBeta);
	}

	// Integrate rate of change of quaternion to yield quaternion
	addMulConstanta2(q, qDot, invSampleFreq);

	// Normalise quaternion
//	normType1(q);
//	normType2(q);
	normType3(q);

//	anglesComputed = 0;
}

//-------------------------------------------------------------------------------------------
// IMU algorithm update
void updateIMU(float g[3], float a[3], float q[4], float euler[3]) {
	float _a[4] = {0, a[0], a[1], a[2]};
	float s[4] = {0.0f, 0.0f, 0.0f, 0.0f};
	float qDot[4] = {0.0f, 0.0f, 0.0f, 0.0f};
	float _2q0, _2q1, _2q2, _2q3, _4q0, _4q1, _4q2 ,_8q1, _8q2, q0q0, q1q1, q2q2, q3q3;
//	int anglesComputed = 0;

	// Convert gyroscope degrees/sec to radians/sec
	conv2radPerSecond(g);

	// Rate of change of quaternion from gyroscope
	computeQDot(qDot, q, g);

	// Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
	if(!((a[0] == 0.0f) && (a[1] == 0.0f) && (a[2] == 0.0f))) {

		// Normalise accelerometer measurement
//		normType1(_a);
		normType3(_a);

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
		s[0] = _4q0 * q2q2 + _2q2 * a[0] + _4q0 * q1q1 - _2q1 * a[1];
		s[1] = _4q1 * q3q3 - _2q3 * a[0] + 4.0f * q0q0 * q[1] - _2q0 * a[1] - _4q1 + _8q1 * q1q1 + _8q1 * q2q2 + _4q1 * a[2];
		s[2] = 4.0f * q0q0 * q[2] + _2q0 * a[0] + _4q2 * q3q3 - _2q3 * a[1] - _4q2 + _8q2 * q1q1 + _8q2 * q2q2 + _4q2 * a[2];
		s[3] = 4.0f * q1q1 * q[3] - _2q1 * a[0] + 4.0f * q2q2 * q[3] - _2q2 * a[1];

		// normalise step magnitude
//		normType1(s);
		normType3(s);

		// Apply feedback step
		addMulConstanta2(qDot, s, negBeta);
	}

	// Integrate rate of change of quaternion to yield quaternion
	addMulConstanta2(q, qDot, invSampleFreq);

	// Normalise quaternion
//	normType1(q);
	normType3(q);

//	anglesComputed = 0;
}

//-------------------------------------------------------------------------------------------
//
void conv2radPerSecond(float gyro[3]){
	convert_to_rad : for (int i=0; i<3; i++){
		gyro[i] *= 0.0174533;
	}
}

//-------------------------------------------------------------------------------------------
//
void normType1(float input[4]){
	float recipNorm = 0;
	float temp[3] = {input[1], input [2], input[3]};
	if (input[0] == 0.0f){
		recipNorm = hls::rsqrtf(input[1] * input[1] + input[2] * input[2] + input[3] * input[3]);
	}
	else{
//		recipNorm = hls::sqrtf(hls::powf(input[0], 2) + hls::powf(input[1], 2) + hls::powf(input[2], 2) + hls::powf(input[3], 2));
		recipNorm = hls::rsqrtf(input[0] * input[0] + input[1] * input[1] + input[2] * input[2] + input[3] * input[3]);
		input[0] *= recipNorm;
//		std::cout << "neq 0" <<std::endl;
	}

//	loop_norm :for (int i = 1; i<4; i++){
//		input[i] *= recipNorm;
//	}

	mulConstanta(temp, recipNorm);
//	std::cout << recipNorm <<std::endl;
}

//-------------------------------------------------------------------------------------------
//
void normType2(float input[4]){
	float recipNorm = 0;
	recipNorm = hls::sqrtf(hls::powf(input[0], 2) + hls::powf(input[1], 2) + hls::powf(input[2], 2) + hls::powf(input[3], 2));
	loop_norm :for (int i = 1; i<4; i++){
		input[i] *= recipNorm;
	}
	if (input[0] != 0)
		input[0] *= recipNorm;
}

//-------------------------------------------------------------------------------------------
//
void normType3(float input[4]){
	float recipNorm;
	recipNorm = hls::rsqrtf(input[0] * input[0] + input[1] * input[1] + input[2] * input[2] + input[3] * input[3]);
	loop_norm: for(int i = 0; i<4; i++){
		input[i] *= recipNorm;
	}
}


//-------------------------------------------------------------------------------------------
//
void normType4(float input[3]){
	float recipNorm;
	recipNorm = hls::rsqrtf(input[0] * input[0] + input[1] * input[1] + input[2] * input[2]);
	loop_norm: for(int i = 0; i<3; i++){
		input[i] *= recipNorm;
	}
}

//-------------------------------------------------------------------------------------------
//
void computeQDot(float result[4], float Q[4], float gyro[3]){
	result[0] = 0.5f * (-Q[1] * gyro[0] - Q[2] * gyro[1] - Q[3] * gyro[2]);
	result[1] = 0.5f * (Q[0] * gyro[0] + Q[2] * gyro[2] - Q[3] * gyro[1]);
	result[2] = 0.5f * (Q[0] * gyro[1] - Q[1] * gyro[2] + Q[3] * gyro[0]);
	result[3] = 0.5f * (Q[0] * gyro[2] + Q[1] * gyro[1] - Q[2] * gyro[0]);
}

//-------------------------------------------------------------------------------------------
//
void computeAngles(float q[4], float euler[3])
{
	euler[0] = hls::atan2f(q[0]*q[1] + q[2]*q[3], 0.5f - q[1]*q[1] - q[2]*q[2]);
	euler[1] = hls::asinf(-2.0f * (q[1]*q[3] - q[0]*q[2]));
	euler[2] = hls::atan2f(q[1]*q[2] + q[0]*q[3], 0.5f - q[2]*q[2] - q[3]*q[3]);
//	anglesComputed = 1;
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
void addMulConstanta2(float result[4], float vector[4], float constanta){
	float temp[3] = {vector[1], vector[2], vector[3]};
	mulConstanta(temp, constanta);
	loop_addMullConstanta : for(int i=1; i<4; i++){
//		result[i] += vector[i]*constanta;
		result[i] = result[i] + temp[i-1];
	}
	result[0] += vector[0] * constanta;
}

//-------------------------------------------------------------------------------------------
//
void mulConstanta(float vector[3], float constanta){
	loop_mulConstanta : for (int i=0; i<3; i++){
		vector[i] *= constanta;
	}
}
