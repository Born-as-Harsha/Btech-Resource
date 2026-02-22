clc; clear all; close all;
%======== Time scaling of Triangular pulse ===========================
t = -3:0.001:3;

% Original Triangular Pulse (width = 2 for better visibility)
y1 = tripuls(t,2);        % Triangular pulse width = 2
y2 = tripuls(2*t,2);      % Compressed (factor 2)
y3 = tripuls(t/3,2);      % Expanded (factor 3)

% Plot
figure();
plot(t, y1,'b','LineWidth',3); hold on;
plot(t, y2,'--r','LineWidth',3);
plot(t, y3,':m','LineWidth',3); grid on;

legend('Original Triangular Pulse', 'Compressed (a=2)','Expanded (a=1/3)');
set(gca,'fontsize',14);
xlabel('Time ----->');
ylabel('Amplitude ----->');
title('Time Scaling of Triangular Pulse');
axis([-3 3 -0.1 1.2]);

