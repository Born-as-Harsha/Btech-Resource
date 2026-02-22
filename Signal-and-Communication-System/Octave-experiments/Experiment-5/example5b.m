clear all; close all; clc;
% Define time vector for numerical plot
t = -5:0.01:5;
x = exp(-abs(t)); % Original signal e^(-|t|)
% Plot the signal
figure();
plot(t, x, 'LineWidth', 2);
title('Original Signal e^{-abs(t)}');
xlabel('t'); ylabel('x(t)');
axis([-5 5 0 1.2]);
grid on;
% ========== Spectrum (Known Fourier Transform) ================
w = -pi:0.001:pi; % Frequency vector
X = 2 ./ (w.^2 + 1); % Known Fourier transform of e^{-abs(t)}
Xm = abs(X); % Magnitude spectrum
Xp = angle(X); % Phase spectrum (should be zero for real and even signals)
% Plot magnitude and phase
figure();
subplot(2,1,1);
plot(w, Xm, 'r', 'LineWidth', 2);
title('Magnitude Spectrum');
xlabel('\omega'); ylabel('|X(\omega)|');
axis([-pi pi 0 2.2]); grid on;
subplot(2,1,2);
plot(w, Xp, 'b', 'LineWidth', 2);
title('Phase Spectrum');
xlabel('\omega'); ylabel('Phase of X(\omega)');
axis([-pi pi -pi/2 pi/2]); grid on;
