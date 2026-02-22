% Part (a): Sampling Frequency 600 Hz
clear all;
close all;

% Signal parameters
f1 = 190; % Hz
f2 = 420; % Hz
fs = 600; % Hz
Ts = 1/fs;

% Time vector for continuous signal (for plotting)
t = 0:Ts/100:0.02;
s_t = 1.2*sin(2*pi*f1*t + pi/3) + 2*cos(2*pi*f2*t - pi/5);

% Discrete time vector for sampled signal
n = 0:round(0.02/Ts);
s_n = 1.2*sin(2*pi*f1*n*Ts + pi/3) + 2*cos(2*pi*f2*n*Ts - pi/5);

% Plot the original and sampled signals
figure;
plot(t, s_t, 'b', 'DisplayName', 'Original Signal');
hold on;
stem(n*Ts, s_n, 'r', 'filled', 'DisplayName', 'Sampled Signal');
grid on;
title('Original and Sampled Signals ($f_s = 600$ Hz)');
xlabel('Time (s)');
ylabel('Amplitude');
legend;

% Frequency Spectrum
N = length(s_n);
f_fft = (-N/2:N/2-1) * (fs/N);
S_n_fft = fftshift(fft(s_n));

figure;
plot(f_fft, abs(S_n_fft), 'b');
grid on;
title('Frequency Spectrum ($f_s = 600$ Hz)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
% The spectrum will show peaks at 190 Hz and 180 Hz (and their negative counterparts).
