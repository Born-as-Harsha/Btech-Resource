clc; clear all; close all;

% Time axis
dt = 0.001;
t  = -1:dt:5;

% Define unit step
us = @(t,to) double(t>=to);

% Signals
x = exp(-2*t).*us(t,0);   % x(t) = e^(-2t) u(t)
h = us(t,0);              % h(t) = u(t)

% Convolution
y = conv(x,h)*dt;

% Time axis for convolution
t_conv = (t(1)+t(1)):dt:(t(end)+t(end));

% Plot
figure();

subplot(3,1,1);
plot(t, x,'b','LineWidth',2);
xlabel('time ----->'); ylabel('Amplitude ----->');
title('x(t) = e^{-2t}u(t)');
axis([-1 5 -0.2 1.2]); grid on;

subplot(3,1,2);
plot(t, h,'k','LineWidth',2);
xlabel('time ----->'); ylabel('Amplitude ----->');
title('h(t) = u(t)');
axis([-1 5 -0.2 1.2]); grid on;

subplot(3,1,3);
plot(t_conv, y,'r','LineWidth',2);
xlabel('time ----->'); ylabel('Amplitude ----->');
title('y(t) = x(t) * h(t)');
axis([-1 10 -0.2 1.2]); grid on;

