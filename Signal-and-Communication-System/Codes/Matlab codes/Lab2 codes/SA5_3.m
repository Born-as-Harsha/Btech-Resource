 

%  Program SA5_3.m

% Amplitude scaling of Ramp signals
% Developed by Dr. M. Venu Gopala Rao, Professor, Dept. of ECE,
% KL University, Vaddeswaram, Guntur Dt., A.P., India.
% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all; close all; clc;

t = -3:0.0001:3;
y1 = ur(t,0);
y2 = -ur(t,0);
y3 = 1.2*ur(t,01);
figure();set(gca,'fontsize',12);
subplot(1,3,1); plot(t, y1,'b','LineWidth',2);
title('Ramp r(t)');axis([-3 3 -0.1 1.5]); axis square
subplot(1,3,2); plot(t, y2,'m','LineWidth',2);
title('-r(t)');axis([-3 3 -3 0.5]); axis square
subplot(1,3,3); plot(t, y3,'k','LineWidth',2);
title('1.2r(t)');axis([-3 3 -0.1 1.5]); axis square

