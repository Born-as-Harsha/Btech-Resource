

%  Program SA3_1.m

% Generation and plot of Continuous Time unit impulse function
% Developed by Dr. M. Venu Gopala Rao, Professor, Dept. of ECE,
% KL University, Vaddeswaram, Guntur Dt., A.P., India.
% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,
clear all; close all; clc;

t = -3:0.0001:3;

% Define unit delta function
y = ud(t,0);
figure();
%%%% uncomment the following two lines and observe the results
% plot(t,zeros(size(t)),'k','LineWidth',1); hold on; %Horizontal line as time index
% plot(zeros(size(t)),t,'k','LineWidth',1); hold on; %Vertical line as magnitude index

plot(t, y,'b','LineWidth',3); grid on;
set(gca,'fontsize',14);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('delta(t)');axis([-3 3 -0.1 1.2]);

