%%read csv file
m       = dlmread('output2.csv', ',', [0 0 6958 2]);
g       = dlmread('output2.csv', ',', [0 3 6958 5]);
a       = dlmread('output2.csv', ',', [0 6 6958 8]);
q64     = dlmread('output2.csv', ',', [0 9 6958 12]);
euler64 = dlmread('output2.csv', ',', [0 13 6958 15]);
q32     = dlmread('output2.csv', ',', [0 16 6958 19]);
euler32 = dlmread('output2.csv', ',', [0 20 6958 22]);

%%calculate Root Mean Square Error
for i = 1:3
  %(q32(i) - q64(i))    % Errors
  %(q32(i) - q64(i)).^2   % Squared Error
  %mean(q32(i) - q64(i)).^2)   % Mean Squared Error
  RMSE_q(i) = sqrt(mean((q32(i) - q64(i)).^2));  % Root Mean Squared Error
  RMSE_euler(i) = sqrt(mean((euler32(i) - euler64(i)).^2));  % Root Mean Squared Error
end
  RMSE_q(4) = sqrt(mean((q32(4) - q64(4)).^2));  % Root Mean Squared Error

disp(RMSE_q);
disp(RMSE_euler);

time = 1:1:6959;

%% plot quaternion comparison
figure('Name', 'quaternion comparison');

axis(1) = subplot(4,1,1);
hold on;
plot(time, q32(:,1), 'r');
plot(time, q64(:,1), 'b');
legend('float', 'double');
xlabel('Time (s)');
ylabel('q magnitude');
title('quaternion (1)');
hold off;

axis(2) = subplot(4,1,2);
hold on;
plot(time, q32(:,2), 'r');
plot(time, q64(:,2), 'b');
legend('float', 'double')
xlabel('Time (s)');
ylabel('q magnitude');
title('quaternion (2)');
hold off;

axis(3) = subplot(4,1,3);
hold on;
plot(time, q32(:,3), 'r');
plot(time, q64(:,3), 'b');
legend('float', 'double');
xlabel('Time (s)');
ylabel('q magnitude');
title('quaternion (3)');
hold off;

axis(4) = subplot(4,1,4);
hold on;
plot(time, q32(:,4), 'r');
plot(time, q64(:,4), 'b');
legend('float', 'double')
xlabel('Time (s)');
ylabel('q magnitude');
title('quaternion (4)');
hold off;

linkaxes(axis, 'x');

%% plot euler comparison in radians

figure('Name', 'euler comparison');

axis(1) = subplot(3,1,1);
hold on;
plot(time, euler32(:,1), 'r');
plot(time, euler64(:,1), 'b');
legend('float', 'double');
xlabel('Time (s)');
ylabel('Angle (rad)');
title('roll (\phi)');
hold off;

axis(2) = subplot(3,1,2);
hold on;
plot(time, euler32(:,2), 'r');
plot(time, euler64(:,2), 'b');
legend('float', 'double')
xlabel('Time (s)');
ylabel('Angle (rad)');
title('pitch (\theta)');
hold off;

axis(3) = subplot(3,1,3);
hold on;
plot(time, euler32(:,3), 'r');
plot(time, euler64(:,3), 'b');
legend('float', 'double');
xlabel('Time (s)');
ylabel('Angle (rad)');
title('yaw (\psi)');
hold off;

linkaxes(axis, 'x');