

%  Program SA5_5.m

% Time shifting of step signals
% Developed by Dr. M. Venu Gopala Rao, Professor, Dept. of ECE,
% KL University, Vaddeswaram, Guntur Dt., A.P., India.
% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com

clear all; close all; clc;

t = -3:0.0001:3;
y1 = us(t,0);
y2 = us(t,2);
y3 = us(t,-1);

figure();
subplot(1,3,1);
%%%% uncomment the following two lines and observe the results
plot(t,zeros(size(t)),'k','LineWidth',1); hold on; %Horizontal line as time index
plot(zeros(size(t)),t,'k','LineWidth',1); hold on; %Vertical line as magnitude index
plot(t, y1,'r','LineWidth',2);
title('Unit step');axis([-3 3 -0.1 1.5]); axis square

subplot(1,3,2); 
%%%% uncomment the following two lines and observe the results
plot(t,zeros(size(t)),'k','LineWidth',1); hold on; %Horizontal line as time index
plot(zeros(size(t)),t,'k','LineWidth',1); hold on; %Vertical line as magnitude index
plot(t, y2,'m','LineWidth',2);
title('Delayed step u(t-2)');axis([-3 3 -0.1 1.5]); axis square

subplot(1,3,3);
%%%% uncomment the following two lines and observe the results
plot(t,zeros(size(t)),'k','LineWidth',1); hold on; %Horizontal line as time index
plot(zeros(size(t)),t,'k','LineWidth',1); hold on; %Vertical line as magnitude index
plot(t, y3,'b','LineWidth',2);
title('Advanced step u(t+2)');axis([-3 3 -0.1 1.5]); axis square

