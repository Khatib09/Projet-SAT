%% FILE IMPORT
filename = 'device_imu.csv';
T = readtable(filename);

%% DATA EXTRACTION

% extraction condition
mag_condition  = strcmp(T{:, 1}, 'UncalMag');
acc_condition  = strcmp(T{:, 1}, 'UncalAccel');
gyro_condition = strcmp(T{:, 1}, 'UncalGyro');

% time data
%data.utcTimeMillis = data.utcTimeMillis - data.utcTimeMillis;


% global matrix data
MAG  = T(mag_condition, :);
ACC  = T(acc_condition, :);
GYRO = T(gyro_condition, :);