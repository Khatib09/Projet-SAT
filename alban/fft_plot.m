%% MAG FFT

nexttile;
[frequencies, values] = fft_function(MAG,'utcTimeMillis', 'MeasurementX');
plot(frequencies, values);
title('MAG Measurement X');

nexttile;
[frequencies, values] = fft_function(MAG,'utcTimeMillis', 'MeasurementY');
plot(frequencies, values);
title('MAG Measurement Y');

nexttile;
[frequencies, values] = fft_function(MAG,'utcTimeMillis', 'MeasurementZ');
plot(frequencies, values);
title('MAG Measurement Z');

%% ACC FFT

nexttile;
[frequencies, values] = fft_function(ACC,'utcTimeMillis', 'MeasurementX');
plot(frequencies, values);
title('ACC Measurement X');

nexttile;
[frequencies, values] = fft_function(ACC,'utcTimeMillis', 'MeasurementY');
plot(frequencies, values);
title('ACC Measurement Y');

nexttile;
[frequencies, values] = fft_function(ACC,'utcTimeMillis', 'MeasurementZ');
plot(frequencies, values);
title('ACC Measurement Z');

%% GYRO FFT

nexttile;
[frequencies, values] = fft_function(GYRO,'utcTimeMillis', 'MeasurementX');
plot(frequencies, values);
title('GYRO Measurement X');

nexttile;
[frequencies, values] = fft_function(GYRO,'utcTimeMillis', 'MeasurementY');
plot(frequencies, values);
title('GYRO Measurement Y');

nexttile;
[frequencies, values] = fft_function(GYRO,'utcTimeMillis', 'MeasurementZ');
plot(frequencies, values);
title('GYRO Measurement Z');

