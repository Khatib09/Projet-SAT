%% FILE IMPORT
filename = 'ground_truth.csv';
T = readtable(filename);

%% GROUND TRUTH PLOT

geoplot(T,'LatitudeDegrees','LongitudeDegrees');
title 'Ground Truth';

%% SPEED PLOT

%plot(T, 'UnixTimeMillis','SpeedMps');

speed = T.SpeedMps;
time = (T.UnixTimeMillis - T.UnixTimeMillis(1)) / 1000;
plot(time,speed);

title 'True Speed';