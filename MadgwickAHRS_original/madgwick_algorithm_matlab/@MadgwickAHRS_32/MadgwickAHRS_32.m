classdef MadgwickAHRS_32 < handle
%MadgwickAHRS_32 Implementation of Madgwick's IMU and AHRS algorithms
%
%   For more information see:
%   http://www.x-io.co.uk/node/8#open_source_ahrs_and_imu_algorithms
%
%   Date          Author          Notes
%   28/09/2011    SOH Madgwick    Initial release

    %% Public properties
    properties (Access = public)
        SamplePeriod = single(1/256);
        Quaternion_32 = single([1 0 0 0]);     % output Quaternion_32 describing the Earth relative to the sensor
        Beta = single(1);               	% algorithm gain
    end

    %% Public methods
    methods (Access = public)
        function obj = MadgwickAHRS_32(varargin)
            for i = 1:2:nargin
                if  strcmp(varargin{i}, 'SamplePeriod'), obj.SamplePeriod = varargin{i+1};
                elseif  strcmp(varargin{i}, 'Quaternion_32'), obj.Quaternion_32 = varargin{i+1};
                elseif  strcmp(varargin{i}, 'Beta'), obj.Beta = varargin{i+1};
                else error('Invalid argument');
                end
            end;
        end
        function obj = Update(obj, Gyroscope, Accelerometer, Magnetometer)
            q = obj.Quaternion_32; % short name local variable for readability
            q = single(q);
            Accelerometer = single(Accelerometer);
            Magnetometer = single(Magnetometer);
            Gyroscope = single(Gyroscope);
            % Normalise accelerometer measurement
            if(norm(Accelerometer) == 0), return; end	% handle NaN
            Accelerometer = Accelerometer / norm(Accelerometer);	% normalise magnitude

            % Normalise magnetometer measurement
            if(norm(Magnetometer) == 0), return; end	% handle NaN
            Magnetometer = Magnetometer / norm(Magnetometer);	% normalise magnitude

            % Reference direction of Earth's magnetic feild
            h = single(quaternProd(q, quaternProd([0 Magnetometer], quaternConj(q))));
            b = single([0 norm([h(2) h(3)]) 0 h(4)]);

            % Gradient decent algorithm corrective step
            F = single([2*(q(2)*q(4) - q(1)*q(3)) - Accelerometer(1)
                2*(q(1)*q(2) + q(3)*q(4)) - Accelerometer(2)
                2*(0.5 - q(2)^2 - q(3)^2) - Accelerometer(3)
                2*b(2)*(0.5 - q(3)^2 - q(4)^2) + 2*b(4)*(q(2)*q(4) - q(1)*q(3)) - Magnetometer(1)
                2*b(2)*(q(2)*q(3) - q(1)*q(4)) + 2*b(4)*(q(1)*q(2) + q(3)*q(4)) - Magnetometer(2)
                2*b(2)*(q(1)*q(3) + q(2)*q(4)) + 2*b(4)*(0.5 - q(2)^2 - q(3)^2) - Magnetometer(3)]);
            J = single([-2*q(3),                 	2*q(4),                    -2*q(1),                         2*q(2)
                2*q(2),                 	2*q(1),                    	2*q(4),                         2*q(3)
                0,                         -4*q(2),                    -4*q(3),                         0
                -2*b(4)*q(3),               2*b(4)*q(4),               -4*b(2)*q(3)-2*b(4)*q(1),       -4*b(2)*q(4)+2*b(4)*q(2)
                -2*b(2)*q(4)+2*b(4)*q(2),	2*b(2)*q(3)+2*b(4)*q(1),	2*b(2)*q(2)+2*b(4)*q(4),       -2*b(2)*q(1)+2*b(4)*q(3)
                2*b(2)*q(3),                2*b(2)*q(4)-4*b(4)*q(2),	2*b(2)*q(1)-4*b(4)*q(3),        2*b(2)*q(2)]);
            step = single(J'*F);
            step = step / norm(step);	% normalise step magnitude

            % Compute rate of change of Quaternion_32
            qDot = single(0.5 * quaternProd(q, [0 Gyroscope(1) Gyroscope(2) Gyroscope(3)]) - obj.Beta * step');

            % Integrate to yield Quaternion_32
            q = q + qDot * obj.SamplePeriod;
            obj.Quaternion_32 = q / norm(q); % normalise Quaternion_32
        end
        function obj = UpdateIMU(obj, Gyroscope, Accelerometer)
            
            Accelerometer = single(Accelerometer);
            Gyroscope = single(Gyroscope);
            q = obj.Quaternion_32; % short name local variable for readability
            q = single(q);
            % Normalise accelerometer measurement
            if(norm(Accelerometer) == 0), return; end	% handle NaN
            Accelerometer = Accelerometer / norm(Accelerometer);	% normalise magnitude

            % Gradient decent algorithm corrective step
            F = single([2*(q(2)*q(4) - q(1)*q(3)) - Accelerometer(1)
                2*(q(1)*q(2) + q(3)*q(4)) - Accelerometer(2)
                2*(0.5 - q(2)^2 - q(3)^2) - Accelerometer(3)]);
            J = single([-2*q(3),	2*q(4),    -2*q(1),	2*q(2)
                2*q(2),     2*q(1),     2*q(4),	2*q(3)
                0,         -4*q(2),    -4*q(3),	0    ]);
            step = single(J'*F);
            step = step / norm(step);	% normalise step magnitude

            % Compute rate of change of Quaternion_32
            qDot = single(0.5 * quaternProd(q, [0 Gyroscope(1) Gyroscope(2) Gyroscope(3)]) - obj.Beta * step');

            % Integrate to yield Quaternion_32
            q = q + qDot * obj.SamplePeriod;
            obj.Quaternion_32 = q / norm(q); % normalise Quaternion_32
        end
    end
end