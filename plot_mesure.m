%% FILE IMPORT

filename =  "C:\Users\Bahaddi\Documents\Ecole\Projet SAT\data\GooglePixel4XL\device_imu";
T = readtable(filename);

%% DATA EXTRACTION

% extraction condition
mag_condition  = strcmp(T{:, 1}, 'UncalMag');
acc_condition  = strcmp(T{:, 1}, 'UncalAccel');
gyro_condition = strcmp(T{:, 1}, 'UncalGyro');

% global matrix data
Mag = T(mag_condition, :);
Acc  = T(acc_condition, :);
Gyro = T(gyro_condition, :);
Mag_Time = (Mag.utcTimeMillis - Mag.utcTimeMillis(1)) / 1000;
Acc_Time = (Acc.utcTimeMillis - Acc.utcTimeMillis(1)) / 1000;
Gyro_Time = (Gyro.utcTimeMillis - Gyro.utcTimeMillis(1)) / 1000;

%% MAG PLOT

% nexttile;
% plot(Mag_Time,Mag.MeasurementX);
% title('MAG Measurement X');
% nexttile;
% plot(Mag_Time,Mag.MeasurementY);
% title('MAG Measurement Y');
% nexttile;
% plot(Mag_Time,Mag.MeasurementZ);
% title('MAG Measurement Z');
% nexttile;
% plot(Mag_Time,Mag.BiasX);
% title('MAG Bias X');
% nexttile;
% plot(Mag_Time,Mag.BiasY);
% title('MAG Bias Y');
% nexttile;
% plot(Mag_Time,Mag.BiasZ);
% title('MAG Bias Z');

%% ACC PLOT

nexttile;
plot(Acc_Time,Acc.MeasurementX);
title('ACC Measurement X');
nexttile;
plot(Acc_Time,Acc.MeasurementY);
title('ACC Measurement Y');
nexttile;
plot(Acc_Time,Acc.MeasurementZ);
title('ACC Measurement Z');
nexttile;
plot(Acc_Time,Acc.BiasX);
title('ACC Bias X');
nexttile;
plot(Acc_Time,Acc.BiasY);
title('ACC Bias Y');
nexttile;
plot(Acc_Time,Acc.BiasZ);
title('ACC Bias Z');

%% GYRO PLOT

% nexttile;
% plot(Gyro_Time, Gyro.MeasurementX);
% title('GYRO Measurement X');
% nexttile;
% plot(Gyro_Time, Gyro.MeasurementY);
% title('GYRO Measurement Y');
% nexttile;
% plot(Gyro_Time, Gyro.MeasurementZ);
% title('GYRO Measurement Z');
% nexttile;
% plot(Gyro_Time, Gyro.BiasX);
% title('GYRO Bias X');
% nexttile;
% plot(Gyro_Time, Gyro.BiasY);
% title('GYRO Bias Y');
% nexttile;
% plot(Gyro_Time,Gyro.BiasZ);
% title('GYRO Bias Z');
