clear all; close all; clc;

% NOTE: This code uses functions from the MATLAB Symbolic Math Toolbox,
% which is not part of a standard Octave installation. To run this
% in Octave, you would need to install and configure the symbolic package.

syms s t
H = (s+2)/(s^2 + 2*s + 2);

% Pole-zero plot
pzmap(tf([1 2], [1 2 2]));

% Inverse Laplace
x = ilaplace(H, s, t);

% Plot x(t) for t>=0
fplot(x, [0 10]);
grid on;
title('x(t)');
xlabel('t');
ylabel('x(t)');

