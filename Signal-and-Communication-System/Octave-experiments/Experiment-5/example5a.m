clear all; close all; clc;
% Time-domain signal
t = -1:0.01:6;
x = exp(-t) .* (t >= 0); % equivalent to e^(-t)u(t)
% Plot original signal
figure();
plot(t, x, 'LineWidth', 2);
title('Original Signal e^{-t} u(t)');
xlabel('t'); ylabel('x(t)');
axis([-1 6 0 1.2]);
grid on;
% ========== Spectrum ================
w = -pi:0.001:pi; % Frequency vector
X = 1 ./ (1 + 1i * w); % Fourier Transform of e^(-t)u(t)
Xm = abs(X); % Magnitude spectrum
Xp = angle(X); % Phase spectrum
% Plot magnitude and phase
figure();
subplot(2,1,1);
plot(w, Xm, 'r', 'LineWidth', 2);
title('Magnitude Spectrum');
xlabel('\omega'); ylabel('|X(\omega)|');
axis([-pi pi 0 1.2]); grid on;
subplot(2,1,2);
plot(w, Xp, 'b', 'LineWidth', 2);
title('Phase Spectrum');
xlabel('\omega'); ylabel('Phase of X(\omega)');
axis([-pi pi -pi/2 pi/2]); grid on;
