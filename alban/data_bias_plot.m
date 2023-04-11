%% MAG BIAS PLOT (CALIBRATION)

% plan plot
nexttile;
plot(MAG, 'MeasurementX', 'MeasurementY');
title('(X, Y)');

nexttile;
plot(MAG, 'MeasurementX', 'MeasurementZ');
title('(X, Z)');

nexttile;
plot(MAG, 'MeasurementY', 'MeasurementZ');
title('(Y, Z)');

% linear plot
nexttile;
plot(MAG, 'utcTimeMillis','BiasX');
title('MAG Bias X');

nexttile;
plot(MAG, 'utcTimeMillis','BiasY');
title('MAG Bias Y');

nexttile;
plot(MAG, 'utcTimeMillis','BiasZ');
title('MAG Bias Z');

%% ACC BIAS (GRAVITY ACCELERATION)

ACC_meanX = mean(ACC.MeasurementX);
disp(ACC_meanX);

ACC_meanY = mean(ACC.MeasurementY);
disp(ACC_meanY);

ACC_meanZ = mean(ACC.MeasurementZ);
disp(ACC_meanZ);

ACC_mean = sqrt(ACC_meanX ^2 + ACC_meanY ^2 +ACC_meanZ ^2);
disp(ACC_mean);
