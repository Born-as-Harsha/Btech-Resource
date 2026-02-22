
clear all; close all; clc;
pkg load symbolic  % Ensure the symbolic package is loaded

syms t w;
assume(t, 'real');  % Helpful for symbolic integration

x = exp(-t) * heaviside(t);

% Plot original signal using fplot
figure();
fplot(x, [-1, 6]);
title('Original Signal e^{-t} u(t)');
xlabel('t'); ylabel('x(t)');
axis([-1 6 0 1.2]); grid on;

% Compute Fourier Transform symbolically
X = fourier(x, t, w);
disp('Fourier Transform X(w) =');
pretty(X)

% Numerical evaluation of spectrum
w_vals = -pi:0.001:pi;
X_num = 1 ./ (1i * w_vals + 1);   % Manual spectrum expression
Xm = abs(X_num);
Xp = angle(X_num);

% Plot magnitude and phase
figure();
subplot(2,1,1);
plot(w_vals, Xm, 'r', 'LineWidth', 3);
title('Magnitude Spectrum');
xlabel('\omega'); ylabel('|X(j\omega)|');
axis([-pi pi 0 1.2]); grid on;

subplot(2,1,2);
plot(w_vals, Xp, 'b', 'LineWidth', 3);
title('Phase Spectrum');
xlabel('\omega'); ylabel('∠X(j\omega)');
axis([-pi pi -pi/2 pi/2]); grid on;
