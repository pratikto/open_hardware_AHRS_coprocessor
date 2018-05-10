%%read csv file

totalData = 1358;

%time      = dlmread('output2.csv', ',', [0 0 totalData 0]);
m         = dlmread('output2.csv', ',', [0 0 totalData 2]);
g         = dlmread('output2.csv', ',', [0 3 totalData 5]);
a         = dlmread('output2.csv', ',', [0 6 totalData 8]);
q_matlab  = dlmread('output2.csv', ',', [0 9 totalData 12]);
e_matlab  = dlmread('output2.csv', ',', [0 13 totalData 15]);
q_HLS     = dlmread('output2.csv', ',', [0 16 totalData 19]);
e_HLS     = dlmread('output2.csv', ',', [0 20 totalData 22]);
%q_HLS    = dlmread('outputHW.csv', ',', [0 0 totalData 3]);
%e_HLS    = dlmread('outputHW.csv', ',', [0 4 totalData 6]);
q1_HLS    = dlmread('output2.csv', ',', [0 23 totalData 26]);
e1_HLS    = dlmread('output2.csv', ',', [0 27 totalData 29]);

%%%calculate Root Mean Square Error
%for i = 1:3
%  %(q_HLS(i) - q1_HLS(i))    % Errors
%  %(q_HLS(i) - q1_HLS(i)).^2   % Squared Error
%  %mean(q_HLS(i) - q1_HLS(i)).^2)   % Mean Squared Error
%  RMSE_q(i) = sqrt(mean((q_HLS(i) - q1_HLS(i)).^2));  % Root Mean Squared Error
%  RMSE_euler(i) = sqrt(mean((e_HLS(i) - e1_HLS(i)).^2));  % Root Mean Squared Error
%end
%  RMSE_q(4) = sqrt(mean((q_HLS(4) - q1_HLS(4)).^2));  % Root Mean Squared Error

%%calculate Root Mean Square Error
%for i = 1:3
%  %(q_HLS(i) - q1_HLS(i))    % Errors
%  %(q_HLS(i) - q1_HLS(i)).^2   % Squared Error
%  %mean(q_HLS(i) - q1_HLS(i)).^2)   % Mean Squared Error
%  RMSE_q(:,i) = sqrt(mean((q_HLS(:,i) - q1_HLS(:,i)).^2));  % Root Mean Squared Error
%  RMSE_euler(:,i) = sqrt(mean((e_HLS(:,i) - e1_HLS(:,i)).^2));  % Root Mean Squared Error
%end
%  RMSE_q(:,4) = sqrt(mean((q_HLS(:,4) - q1_HLS(:,4)).^2));  % Root Mean Squared Error

for i = 1:3
  %(q_HLS(i) - q1_HLS(i))    % Errors
  %(q_HLS(i) - q1_HLS(i)).^2   % Squared Error
  %mean(q_HLS(i) - q1_HLS(i)).^2)   % Mean Squared Error
  RMSE_q(:,i) = sqrt(mean((q_HLS(:,i) - q_matlab(:,i)).^2));  % Root Mean Squared Error
  RMSE_euler(:,i) = sqrt(mean((e_HLS(:,i) - e_matlab(:,i)).^2));  % Root Mean Squared Error
end
  RMSE_q(:,4) = sqrt(mean((q_HLS(:,4) - q_matlab(:,4)).^2));  % Root Mean Squared Error
  
%for col = 1:3
%  for row = 1: totalData+1
%    RMSE_q(row,col) = sqrt(mean((q_HLS(row,col) - q1_HLS(:,i)).^2));  % Root Mean Squared Error
%  end
% end
disp(RMSE_q);
disp(RMSE_euler);

time = 1:1:totalData+1;

%% plot quaternion comparison
figure('Name', 'quaternion comparison');

axis(1) = subplot(4,1,1);
hold on;
plot(time, q_HLS(:,1), 'r');
plot(time, q1_HLS(:,1), 'g');
plot(time, q_matlab(:,1), 'b');
legend('HLS Software', 'HLS Software1', 'Matlab');
xlabel('Time (s)');
ylabel('q magnitude');
title('quaternion (1)');
hold off;

axis(2) = subplot(4,1,2);
hold on;
plot(time, q_HLS(:,2), 'r');
plot(time, q1_HLS(:,2), 'g');
plot(time, q_matlab(:,2), 'b');
legend('HLS Software', 'HLS Software1', 'Matlab');
xlabel('Time (s)');
ylabel('q magnitude');
title('quaternion (2)');
hold off;

axis(3) = subplot(4,1,3);
hold on;
plot(time, q_HLS(:,3), 'r');
plot(time, q1_HLS(:,3), 'g');
plot(time, q_matlab(:,3), 'b');
legend('HLS Software', 'HLS Software1', 'Matlab');
xlabel('Time (s)');
ylabel('q magnitude');
title('quaternion (3)');
hold off;

axis(4) = subplot(4,1,4);
hold on;
plot(time, q_HLS(:,4), 'r');
plot(time, q1_HLS(:,4), 'g');
plot(time, q_matlab(:,4), 'b');
legend('HLS Software', 'HLS Software1', 'Matlab')
xlabel('Time (s)');
ylabel('q magnitude');
title('quaternion (4)');
hold off;

linkaxes(axis, 'x');

%% plot euler comparison in radians

figure('Name', 'euler comparison');

axis(1) = subplot(3,1,1);
hold on;
plot(time, e_HLS(:,1), 'r');
plot(time, e1_HLS(:,1), 'g');
plot(time, e_matlab(:,1), 'b');
legend('HLS Software', 'HLS Software1', 'Matlab')
xlabel('Time (s)');
ylabel('Angle (rad)');
title('roll (\phi)');
hold off;

axis(2) = subplot(3,1,2);
hold on;
plot(time, e_HLS(:,2), 'r');
plot(time, e1_HLS(:,2), 'g');
plot(time, e_matlab(:,2), 'b');
legend('HLS Software', 'HLS Software1', 'Matlab')
xlabel('Time (s)');
ylabel('Angle (rad)');
title('pitch (\theta)');
hold off;

axis(3) = subplot(3,1,3);
hold on;
plot(time, e_HLS(:,3), 'r');
plot(time, e1_HLS(:,3), 'g');
plot(time, e_matlab(:,3), 'b');
legend('HLS Software', 'HLS Software1', 'Matlab')
xlabel('Time (s)');
ylabel('Angle (rad)');
title('yaw (\psi)');
hold off;

linkaxes(axis, 'x');