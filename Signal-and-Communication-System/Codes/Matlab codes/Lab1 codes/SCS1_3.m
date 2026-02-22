 

%  Program SA3_3.m.m 

% Generation and plot of Continuous Time Ramp impulse function
% Developed by Dr. M. Venu Gopala Rao, Professor, Dept. of ECE,
% KL University, Vaddeswaram, Guntur Dt., A.P., India.
% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,
clear all; close all; clc;

t = -2:0.0001:6;

% Define unit ramp function
y = ur(t,0);

figure();
%%%% uncomment the following two lines and observe the results
% plot(t,zeros(size(t)),'k','LineWidth',1); hold on; %Horizontal line as time index
% plot(zeros(size(t)),t,'k','LineWidth',1); hold on; %Vertical line as magnitude index
plot(t, y,'m','LineWidth',3); grid on;
set(gca,'fontsize',14);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('Unti Ramp function');axis([-2 6 -0.2 6]); 

