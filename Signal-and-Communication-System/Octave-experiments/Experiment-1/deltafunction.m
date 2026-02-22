t = -3:0.0001:3;
% Define unit delta function
y = ud(t,0);
figure();
%%%% uncomment the following two lines and observe the results
% plot(t,zeros(size(t)),'k','LineWidth',1); hold on; %Horizontal line as time index
% plot(zeros(size(t)),t,'k','LineWidth',1); hold on; %Vertical line as magnitude index
plot(t, y,'b','LineWidth',3); grid on;
set(gca,'fontsize',14);
xlabel('time ----->');ylabel('Amplitude ----->');
title('delta(t)');axis([-3 3 -0.1 1.2]);
