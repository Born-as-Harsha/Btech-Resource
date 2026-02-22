clc; clear; close all;

%% Sampling parameters
Fs = 200;               % Sampling frequency (Hz) - high enough (> 10 Hz)
T = 1/Fs;               % Sampling interval
L = 2048;               % Number of samples
t = (-L/2:L/2-1)*T;     % Symmetric time axis
f = (-L/2:L/2-1)*(Fs/L);% Frequency axis in Hz

%% -------- Signal (a): x(t) = e^{-|t|} cos(10t) --------
x1 = exp(-abs(t)) .* cos(10*t);   % Correct formula with decay

% Fourier Transform using FFT
X1 = fftshift(fft(x1, L));
X1mag = abs(X1)/L;
X1phase = angle(X1);

%% -------- Plot Time-domain --------
figure;
plot(t, x1, 'b', 'LineWidth', 1.5);
xlabel('Time (s)'); ylabel('x_1(t)');
title('Signal x_1(t) = e^{-|t|} cos(10t)');
grid on;

%% -------- Plot Magnitude Spectrum --------
figure;
plot(2*pi*f, X1mag, 'r', 'LineWidth', 1.5); % frequency in rad/s
xlabel('Frequency (rad/s)'); ylabel('|X_1(f)|');
title('Magnitude Spectrum of x_1(t)');
grid on;

%% -------- Plot Phase Spectrum --------
figure;
plot(2*pi*f, unwrap(X1phase), 'k', 'LineWidth', 1.5);
xlabel('Frequency (rad/s)'); ylabel('Phase (rad)');
title('Phase Spectrum of x_1(t)');
grid on;

