% ExampleScript.m
%
% This script demonstrates use of the MadgwickAHRS and MahonyAHRS algorithm
% classes with example data. ExampleData.mat contains calibrated gyroscope,
% accelerometer and magnetometer data logged from an AHRS device (x-IMU)
% while it was sequentially rotated from 0 degrees, to +90 degree and then
% to -90 degrees around the X, Y and Z axis.  The script first plots the
% example sensor data, then processes the data through the algorithm and
% plots the output as Euler angles.
%
% Note that the Euler angle plot shows erratic behaviour in phi and psi
% when theta approaches �90 degrees. This due to a singularity in the Euler
% angle sequence known as 'Gimbal lock'.  This issue does not exist for a
% quaternion or rotation matrix representation.
%
% Date          Author          Notes
% 28/09/2011    SOH Madgwick    Initial release
% 13/04/2012    SOH Madgwick    deg2rad function no longer used
% 06/11/2012    Seb Madgwick    radian to degrees calculation corrected

%% Start of script

addpath('quaternion_library');      % include quaternion library
close all;                          % close all figures
clear;                              % clear all variables
clc;                                % clear the command terminal

%% Import and plot sensor data

load('ExampleData.mat');

for t = 1:floor(length(time)/(256/50))
  g(t,:) = Gyroscope(floor(t*(256/50)),:);
  a(t,:) = Accelerometer(floor(t*(256/50)),:);
  m(t,:) = Magnetometer(floor(t*(256/50)),:);
  time2(t)= time(floor(t*(256/50)),:);
end

%%comment this for double precision
%m = single(Magnetometer);
%g = single(Gyroscope);
%a = single(Accelerometer);
%%

figure('Name', 'Sensor Data');
axis(1) = subplot(3,1,1);
hold on;
plot(time, Gyroscope(:,1), 'r');
plot(time, Gyroscope(:,2), 'g');
plot(time, Gyroscope(:,3), 'b');
legend('X', 'Y', 'Z');
xlabel('Time (s)');
ylabel('Angular rate (deg/s)');
title('Gyroscope');
hold off;
axis(2) = subplot(3,1,2);
hold on;
plot(time, Accelerometer(:,1), 'r');
plot(time, Accelerometer(:,2), 'g');
plot(time, Accelerometer(:,3), 'b');
legend('X', 'Y', 'Z');
xlabel('Time (s)');
ylabel('Acceleration (g)');
title('Accelerometer');
hold off;
axis(3) = subplot(3,1,3);
hold on;
plot(time, Magnetometer(:,1), 'r');
plot(time, Magnetometer(:,2), 'g');
plot(time, Magnetometer(:,3), 'b');
legend('X', 'Y', 'Z');
xlabel('Time (s)');
ylabel('Flux (G)');
title('Magnetometer');
hold off;
linkaxes(axis, 'x');

%% Process sensor data through algorithm

AHRS = MadgwickAHRS('SamplePeriod', 1/256, 'Beta', 0.1);
AHRS2 = MadgwickAHRS('SamplePeriod', 1/50, 'Beta', 1/30);
% AHRS = MahonyAHRS('SamplePeriod', 1/256, 'Kp', 0.5);

quaternion = zeros(length(time), 4);
quaternion2 = zeros(floor(length(time)/(256/50)), 4);
for t = 1:length(time)
    AHRS.Update(Gyroscope(t,:) * (pi/180), Accelerometer(t,:), Magnetometer(t,:));	% gyroscope units must be radians
    quaternion(t, :) = AHRS.Quaternion;
end

for t = 1:floor(length(time)/(256/50))
    AHRS2.Update(g(t,:) * (pi/180), a(t,:), m(t,:));	% gyroscope units must be radians
    quaternion2(t, :) = AHRS2.Quaternion;
end

%q = single(quaternion);
%save('ExampleData.mat','quaternion', '-append');
%% Plot algorithm output as Euler angles
% The first and third Euler angles in the sequence (phi and psi) become
% unreliable when the middle angles of the sequence (theta) approaches �90
% degrees. This problem commonly referred to as Gimbal Lock.
% See: http://en.wikipedia.org/wiki/Gimbal_lock

euler = quatern2euler(quaternConj(quaternion)) * (180/pi);	% use conjugate for sensor frame relative to Earth and convert to degrees.
eulerRad = quatern2euler(quaternConj(quaternion));	% use conjugate for sensor frame relative to Earth and convert to radian.
euler2 = quatern2euler(quaternConj(quaternion2)) * (180/pi);	% use conjugate for sensor frame relative to Earth and convert to degrees.
eulerRad2 = quatern2euler(quaternConj(quaternion2));	% use conjugate for sensor frame relative to Earth and convert to radian.

figure('Name', 'Euler Angles');
hold on;
plot(time, euler(:,1), 'r');
plot(time, euler(:,2), 'g');
plot(time, euler(:,3), 'b');
title('Euler angles');
xlabel('Time (s)');
ylabel('Angle (deg)');
legend('\phi', '\theta', '\psi');
hold off;

figure('Name', 'Euler2 Angles');
hold on;
plot(time2, euler2(:,1), 'r');
plot(time2, euler2(:,2), 'g');
plot(time2, euler2(:,3), 'b');
title('Euler angles');
xlabel('Time (s)');
ylabel('Angle (deg)');
legend('\phi', '\theta', '\psi');
hold off;

%%
dlmwrite('gold.float.64bit.csv', [Magnetometer Gyroscope Accelerometer quaternion eulerRad]);
dlmwrite('gold.float.minimum.csv', [m g a quaternion2 eulerRad2]);
%dlmwrite('gold.float.32bit.csv', [m g a q]);
%dlmwrite('gold.float.32bit.csv', [m g a quaternion2v euler]);


dlmwrite ('magnetometer.csv', m, "delimiter", ",", "newline", "},\n{")
dlmwrite ('Accelerometer.csv', a, "delimiter", ",", "newline", "},\n{")
dlmwrite ('Gyroscope.csv', g, "delimiter", ",", "newline", "},\n{")

%% End of script