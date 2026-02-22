
%  Program SA3_4.m

% Generation and plot of CT Rectangular pulse
% Developed by Dr. M. Venu Gopala Rao, Professor, Dept. of ECE,
% KL University, Vaddeswaram, Guntur Dt., A.P., India.
% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all; close all; clc;

%======== Rectangular pulse ===========================
t = -3:0.001:3;

% Manual definition of rectangular pulse of width 1 centered at 0
y = double(abs(t) <= 0.5);

figure();
% Horizontal and vertical lines
plot(t, zeros(size(t)), 'k', 'LineWidth', 1); hold on;
plot(zeros(size(t)), t, 'k', 'LineWidth', 1); hold on;

% Rectangular pulse plot
plot(t, y, 'b', 'LineWidth', 3);

set(gca, 'fontsize', 14);
title('Rectangular Pulse'); grid on;
axis([-1 1 -0.1 1.2]);
xlabel('time  ----->');
ylabel('Amplitude ----->');

%=======================================
