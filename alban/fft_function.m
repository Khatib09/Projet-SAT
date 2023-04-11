
function [frequencies, values] = fft_function(table_name,time_name, values_name)

    % Gets the values and time columns from the table
    values = table_name.(values_name);
    time = table_name.(time_name);

    % Calculates the FFT of the signal
    fft_values = fft(values);

    % Calculates the frequency domain
    Fs = 1 / mean(diff(time));
    N = length(values);
    frequencies = linspace(-Fs, Fs, N);

    % Output final values
    values = abs(fft_values)  ;

end