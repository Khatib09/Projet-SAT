%% MAG PLOT

nexttile;
plot(MAG, 'utcTimeMillis','MeasurementX');
title('MAG Measurement X');

nexttile;
plot(MAG, 'utcTimeMillis','MeasurementY');
title('MAG Measurement Y');

nexttile;
plot(MAG, 'utcTimeMillis','MeasurementZ');
title('MAG Measurement Z');

%% ACC PLOT

nexttile;
plot(ACC, 'utcTimeMillis','MeasurementX');
title('ACC Measurement X');

nexttile;
plot(ACC, 'utcTimeMillis','MeasurementY');
title('ACC Measurement Y');

nexttile;
plot(ACC, 'utcTimeMillis','MeasurementZ');
title('ACC Measurement Z');


%% GYRO PLOT

nexttile;
plot(GYRO, 'utcTimeMillis','MeasurementX');
title('GYRO Measurement X');

nexttile;
plot(GYRO, 'utcTimeMillis','MeasurementY');
title('GYRO Measurement Y');

nexttile;
plot(GYRO, 'utcTimeMillis','MeasurementZ');
title('GYRO Measurement Z');
