% This script computes and plots time-domain signals and their corresponding
% pole-zero maps using Octave. It replaces the symbolic calculations
% from the original MATLAB code with a numerical approach, leveraging the
% 'control' package for transfer function analysis and plotting.

clear all;
close all;
clc;

% Load the control package for transfer function and pole-zero plotting
% You may need to install it first with `pkg install -forge control`
pkg load control;

% Define the time vector for plotting
t_vals = 0:0.01:5;

% ----------------- Time-Domain Signals -----------------
% The signals are defined numerically, as Octave does not have a symbolic
% toolbox in its core distribution.

% Define x1(t) = exp(-t)·u(t)
% In Octave, the heaviside function is simulated by a logical array
% or by a direct conditional check.
heaviside_vals = t_vals >= 0;
x1_vals = exp(-t_vals) .* heaviside_vals;

% Define x(t) = exp(-t)·cos(10t)·u(t)
x_vals = exp(-t_vals) .* cos(10 * t_vals) .* heaviside_vals;


% ------------------ Plotting Time-Domain Signals ------------------
figure(1);

% Plot x1(t) = exp(-t)·u(t)
subplot(2,2,1);
plot(t_vals, x1_vals, 'LineWidth', 2);
grid on;
axis([0 5 0 1.1]);
title('x_1(t) = e^{-t}·u(t)');
xlabel('t');
ylabel('x_1(t)');

% Plot x(t) = exp(-t)·cos(10t)·u(t)
subplot(2,2,3);
plot(t_vals, x_vals, 'LineWidth', 2);
grid on;
axis([0 5 -1.1 1.1]);
title('x(t) = e^{-t}·cos(10t)·u(t)');
xlabel('t');
ylabel('x(t)');

% ----------------- Pole-Zero Plots -----------------
% Using the known Laplace transforms to define the transfer functions
% and then plotting their pole-zero maps with the `pzmap` function.

% Laplace of x1(t): 1 / (s + 1)
num1 = [1];
den1 = [1 1];

% Plot pole-zero map for x1(t)
subplot(2,2,2);
sys1 = tf(num1, den1);
pzmap(sys1);
grid on;
title('Pole-Zero Plot of X_1(s)');
xlabel('Re');
ylabel('Im');

% Laplace of x(t): (s + 1) / [(s + 1)^2 + 100] = (s + 1) / (s^2 + 2s + 101)
num2 = [1 1];
den2 = [1 2 101];

% Plot pole-zero map for x(t)
subplot(2,2,4);
sys2 = tf(num2, den2);
pzmap(sys2);
grid on;
title('Pole-Zero Plot of X(s)');
xlabel('Re');
ylabel('Im');

