clear all; close all; clc;
t = -1:0.001:5;
% Define signal x(t)
x = zeros(size(t));
i = find((t>0) & (t<1));
x(i) = 1;
% Define signal h(t)
h = zeros(size(t));
i = find((t>0) & (t<1));
h(i) = t(i);
y = (0.002)*conv(x,h);
t2 = -2:0.001:10; % Time index for y(t)
figure();set(gca,'fontsize',14);
subplot(3,1,1);plot(t, x,'b','LineWidth',3);
xlabel('time ----->');ylabel('Amplitude ----->');
title('x(t)'); axis([-1 5 -0.2 1.2]);
subplot(3,1,2);plot(t, h,'k','LineWidth',3);
xlabel('time ----->');ylabel('Amplitude ----->');
title('h(t)');axis([-1 5 -0.2 1.2]);
subplot(3,1,3);plot(t2, y,'r','LineWidth',3);
xlabel('time ----->');ylabel('Amplitude ----->');
title('y(t)=x(t)*h(t)');axis([-1 5 -0.2 1.2]);