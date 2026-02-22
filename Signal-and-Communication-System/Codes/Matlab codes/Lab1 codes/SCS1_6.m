 
%  Program SA3_6.m

% Generation and plot CT Sync pulse
% Developed by Dr. M. Venu Gopala Rao, Professor, Dept. of ECE,
% KL University, Vaddeswaram, Guntur Dt., A.P., India.
% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all; close all; clc;

%==========  Sync pulse  ================
clear all; close all; clc;                                                                 
t = (-pi:0.001:pi)/100;j = sqrt(-1);
A = 2; F0 = 100;
x = A*sin(2*pi*F0*t)./(2*pi*F0*t);
figure();
plot(t,x,'m','LineWidth',2.5);grid on
xlabel('time  ----->');ylabel('Amplitude ----->');
title('sinc(2*pi*f*t)');set(gca,'fontsize',14);
axis([-0.03, 0.03,-0.6 2.15]);

%=======================================
