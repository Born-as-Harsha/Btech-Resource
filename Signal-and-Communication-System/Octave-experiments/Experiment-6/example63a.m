clear all; close all; clc;

% ---------------- Inverse Laplace Transform ----------------
% NOTE: Octave's symbolic package is not included by default.
% This section is for illustrative purposes if the user has a symbolic toolbox.
% In a typical Octave installation, this would require a package like `symbolic`.
% For now, we'll proceed with the numerical and control-package-based sections below.

% Example symbolic variable definitions if symbolic package is installed
% syms t s
% X = (2*s + 3)/(s^2 + 2*s + 4);
% x = ilaplace(X, s, t); % Inverse Laplace transform symbolic expression

% Numerical time vector for plotting
t_vals = linspace(0, 12, 1000);

% Since symbolic toolbox is not standard, we must define the time-domain function directly
% x(t) = 2*exp(-t)*cos(sqrt(3)*t) - (1/sqrt(3))*exp(-t)*sin(sqrt(3)*t)
omega = sqrt(3);
sigma = 1;
x_vals = 2 * exp(-sigma * t_vals) .* cos(omega * t_vals) - (1/omega) * exp(-sigma * t_vals) .* sin(omega * t_vals);

figure();
plot(t_vals, x_vals, 'LineWidth', 2);
title('x(t) from Inverse Laplace');
xlabel('t'); ylabel('x(t)');
axis([0 12 -1 4]); grid on;

% ---------------- Transfer Function & Pole-Zero Plot ----------------
pkg load control;

% The transfer function is H(s) = (2s + 3) / (s^2 + 2s + 4)
num = [2 3]; % Numerator coefficients: 2*s + 3
den = [1 2 4]; % Denominator coefficients: s^2 + 2*s + 4

H = tf(num, den); % Define transfer function

figure();
pzmap(H); % Plot poles and zeros
title('Pole-Zero Map');

% ---------------- Roots (Poles and Zeros) ----------------
zeros_tf = roots(num);
disp('Zeros:');
disp(zeros_tf);

poles_tf = roots(den);
disp('Poles:');
disp(poles_tf);

% ---------------- Partial Fraction Expansion ----------------
[r, p_res, k] = residue(num, den);
disp('Poles from residue():');
disp(p_res);
disp('Residues:');
disp(r);

% ---------------- Custom s-plane Plot ----------------
figure();
plot(real(zeros_tf), imag(zeros_tf), 'ob', 'MarkerSize', 8, 'LineWidth', 1.5); hold on;
plot(real(poles_tf), imag(poles_tf), 'xr', 'MarkerSize', 10, 'LineWidth', 1.5);
title('Custom s-Plane Plot');
xlabel('Real Axis');
ylabel('Imag Axis');
legend('Zeros', 'Poles');
grid on;
axis equal;

