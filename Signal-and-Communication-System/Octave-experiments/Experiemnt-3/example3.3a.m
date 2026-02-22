clc; clear all; close all;

t = -3:0.001:3;

% Define step and ramp
us = @(t,to) double(t>=to);
ur = @(t,to) (t-to).*(t>=to);

% Ramp signals
x1 = ur(t,0);        % r(t)
x2 = ur(-t,0);       % r(-t)

% Plot
figure();
plot(t, x1,'b','LineWidth',2); hold on;
plot(t, x2,'--m','LineWidth',2);

title('Time Reversal of Ramp Signal');
axis([-2 2 -0.1 2]);
legend('r(t)', 'r(-t)');
set(gca,'fontsize',14);
xlabel('time ----->'); ylabel('Amplitude ----->');
grid on;

