clear all; close all; clc;
% Numerical Heaviside function
t = -3:0.01:3;
x = (t >= 0); % Equivalent to heaviside(t)
% Plot the step function
figure();
plot(t, x, 'LineWidth', 2);
title('Heaviside Function u(t)');
xlabel('t'); ylabel('u(t)');
axis([-3 3 -0.1 1.1]);
grid on;

