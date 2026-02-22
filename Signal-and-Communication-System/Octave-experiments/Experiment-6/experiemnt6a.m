clear all; close all; clc;

% NOTE: This code uses functions from the MATLAB Symbolic Math Toolbox,
% which is not part of a standard Octave installation. To run this
% in Octave, you would need to install and configure the symbolic package.

syms t s

% (a) x1(t) = exp(-3*t) * u(t-3)
x1 = exp(-3*t) * heaviside(t - 3);
X1 = laplace(x1, t, s);

% (b) x2(t) = exp(-(t-2)) * cos(5*t) * u(t)
x2 = exp(-(t - 2)) * cos(5*t) * heaviside(t);
X2 = laplace(x2, t, s);

% Plot both time-domain signals for t = 0..10
fplot(x1, [0 10], 'LineWidth', 2);
hold on;
fplot(x2, [0 10], 'LineWidth', 2);
legend('x_1(t)', 'x_2(t)');
grid on;
title('Time-Domain Signals');
xlabel('Time t');
ylabel('Amplitude');
hold off;

disp('Laplace of (a):');
disp(X1);

disp('Laplace of (b):');
disp(X2);

