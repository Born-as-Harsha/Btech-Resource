
% SA5_9.m

%  Time reversal operation on Ramp signal
% Developed by Dr. M. Venu Gopala Rao, Professor, Dept. of ECE,
% KL University, Vaddeswaram, Guntur Dt., A.P., India.
% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all; close all; clc;
t = -3:0.001:3;
x1 = ur(t,0).*us(t,0);        %  r(t)
% x2 = ur(-t,0).*us(-t,0);       % r(-t)
x2 = fliplr(x1);     % Using fliplr.m function

figure();
plot(t, x1.*us(-t,-1),'b','LineWidth',2);hold on;
plot(t, x2.*us(t,-1),'--m','LineWidth',2);
title('Time Reversal');axis([-2 2 -0.1 1.2]);
legend('r(t)', 'r(-t)');
set(gca,'fontsize',14);
xlabel('time  ----->');ylabel('Amplitude ----->');