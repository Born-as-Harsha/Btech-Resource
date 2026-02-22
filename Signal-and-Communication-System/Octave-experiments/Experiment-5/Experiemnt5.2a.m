clc; clear; close all;

Fs = 100e3;              % Sampling frequency (100 kHz)
T = 1/Fs;
L = 2048;                % FFT length
t = (0:L-1)*T;           % Time vector

%% (a) Rectangular pulse x(t)
x = (t >= 0 & t <= 2e-3);   % Rectangular pulse (0 to 2 ms)

% FFT
X = fftshift(fft(x, L));
f = (-L/2:L/2-1)*(Fs/L);

figure;
subplot(3,1,1);
plot(t*1000, x, 'LineWidth',1.5);
xlabel('t (ms)'); ylabel('x(t)');
title('(a) Rectangular Pulse in Time Domain'); grid on; xlim([0 5]);

subplot(3,1,2);
plot(f, abs(X)/max(abs(X)), 'LineWidth',1.5);
xlabel('Frequency (Hz)'); ylabel('|X(f)|');
title('Magnitude Spectrum of x(t)'); grid on; xlim([-5000 5000]);

subplot(3,1,3);
plot(f, angle(X), 'LineWidth',1.2);
xlabel('Frequency (Hz)'); ylabel('∠X(f)');
title('Phase Spectrum of x(t)'); grid on; xlim([-5000 5000]);

%% (b) Triangular pulse h(t)
h = zeros(size(t));
idx = (t >= 0 & t <= 1.2e-3);
h(idx) = t(idx)/(1.2e-3);   % Triangular ramp

% FFT
H = fftshift(fft(h, L));

figure;
subplot(3,1,1);
plot(t*1000, h, 'LineWidth',1.5);
xlabel('t (ms)'); ylabel('h(t)');
title('(b) Triangular Pulse in Time Domain'); grid on; xlim([0 5]);

subplot(3,1,2);
plot(f, abs(H)/max(abs(H)), 'LineWidth',1.5);
xlabel('Frequency (Hz)'); ylabel('|H(f)|');
title('Magnitude Spectrum of h(t)'); grid on; xlim([-5000 5000]);

subplot(3,1,3);
plot(f, angle(H), 'LineWidth',1.2);
xlabel('Frequency (Hz)'); ylabel('∠H(f)');
title('Phase Spectrum of h(t)'); grid on; xlim([-5000 5000]);

