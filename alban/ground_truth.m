%% FILE IMPORT
filename = 'ground_truth.csv';
data = readtable(filename);

%% GROUND TRUTH PLOT

geobasemap satellite
tlat = data.LatitudeDegrees;
tlon = data.LongitudeDegrees;

geoplot(tlat,tlon,'-r');
title 'Ground Truth';

%% SPEED PLOT

speed = data.SpeedMps;
time = (data.UnixTimeMillis - data.UnixTimeMillis(1)) / 1000;

subplot(2,2,1);
plot(time,speed);
xlabel('Temps (s)');
ylabel('Speed (m/s)');
title('True Speed');

%% HEADING PLOT

heading = data.BearingDegrees;

subplot(2,2,2);
plot(time,heading);
xlabel('Temps (s)');
ylabel('Heading (°)');
title('True Heading');

%% INTERPOLATION SPEED PLOT


t = 0:0.1:1849;
speed_interp = interp1(time, speed, t, 'pchip');

subplot(2,2,3);
plot(t, speed_interp);
xlabel('Temps (s)');
ylabel('Speed (m/s)');
title('Interpolation Speed')

%% INTERPOLATION HEADING PLOT


t = 0:0.1:1849;
heading_interp = interp1(time, heading, t, 'pchip');

subplot(2,2,4);
plot(t, heading_interp);
xlabel('Temps (s)');
ylabel('Heading (°)');
title('Interpolation Heading')

%% STATIC PLOT

SpeedMin = 1;
TimeMin = 60;

indices_speed = find(speed_interp < SpeedMin); 

indices_time = false(1, length(speed_interp)); 
for i = 1:length(indices_speed)
    if length(speed_interp) - indices_speed(i) >= TimeMin
        indices_time(indices_speed(i) : indices_speed(i) + TimeMin - 1) = true;
    end
end


plot(t, speed_interp);
hold on; 
area(t, indices_time*40, 'FaceColor', 'red', 'EdgeColor', 'none', 'FaceAlpha', 0.2); 
xlabel('Temps (s)');
ylabel('Speed (m/s)');
title('Interpolation Speed')

