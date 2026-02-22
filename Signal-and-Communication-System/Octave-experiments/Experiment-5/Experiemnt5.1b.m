clc; clear; close all;

%% Sampling parameters
Fs = 50000;              % Sampling frequency (50 kHz, > 2*5500 to satisfy Nyquist)
T = 1/Fs;                % Sampling interval
L = 8192;                % Number of samples
t = (0:L-1)*T;           % Time vector
f = (-L/2:L/2-1)*(Fs/L); % Frequency axis

%% -------- Signal (b): x(t) = 2cos(2π500t)cos(2π5000t) --------
x2 = 2*cos(2*pi*500*t).*cos(2*pi*5000*t);

% Fourier Transform using FFT
X2 = fftshift(fft(x2, L));
X2mag = abs(X2)/L;
X2phase = angle(X2);

%% -------- Plot Time-domain --------
figure;
plot(t(1:1000), x2(1:1000), 'b', 'LineWidth', 1.5); % Show small window for clarity
xlabel('Time (s)'); ylabel('x_2(t)');
title('Signal x_2(t) = 2cos(2π500t)cos(2π5000t)');
grid on;

%% -------- Plot Magnitude Spectrum --------
figure;
plot(f, X2mag, 'r', 'LineWidth', 1.5);
xlabel('Frequency (Hz)'); ylabel('|X_2(f)|');
title('Magnitude Spectrum of x_2(t)');
xlim([-10000 10000]); % focus around frequencies of interest
grid on;

%% -------- Plot Phase Spectrum --------
figure;
plot(f, unwrap(X2phase), 'k', 'LineWidth', 1.5);
xlabel('Frequency (Hz)'); ylabel('Phase (rad)');
title('Phase Spectrum of x_2(t)');
xlim([-10000 10000]);
grid on;

