
% SA5_8.m

% Time scaling of Triangular pulse
% Developed by Dr. M. Venu Gopala Rao, Professor, Dept. of ECE,
% KL University, Vaddeswaram, Guntur Dt., A.P., India.
% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

clear all; close all; clc;

%======== Time scaling of Triangular pulse ===========================
t = -3:0.001:3;
y1 = tripuls(t,1);
y2 = tripuls(2*t,1);
y3 = tripuls(t/3,1);
figure();
plot(t, y1,'b','LineWidth',3); hold on;
plot(t, y2,'--r','LineWidth',3); grid on;
plot(t, y3,':m','LineWidth',3); grid on;
legend('Triangular Pulse', 'Compression','Expansion');
set(gca,'fontsize',14);
xlabel('time  ----->');ylabel('Amplitude ----->');
title('delta(t)');axis([-3 3 -0.1 1.2]);