t = (-pi:0.001:pi)/100;j = sqrt(-1);
A = 2; F0 = 100;
x = A*sin(2*pi*F0*t)./(2*pi*F0*t);
figure();
plot(t,x,'m','LineWidth',2.5);grid on
xlabel('time ----->');ylabel('Amplitude ----->');
title('sinc(2*pi*f*t)');set(gca,'fontsize',14);
axis([-0.03, 0.03,-0.6 2.15]);
