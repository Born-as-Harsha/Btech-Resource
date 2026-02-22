t = -3:0.0001:3;
% Define unit step function
y = us(t,0);
figure();
%%%% uncomment the following two lines and observe the results
% plot(t,zeros(size(t)),'k','LineWidth',1); hold on; %Horizontal line as time index
% plot(zeros(size(t)),t,'k','LineWidth',1); hold on; %Vertical line as magnitude index
plot(t, y,'r','LineWidth',3); grid on;
set(gca,'fontsize',14);
xlabel('time ----->');ylabel('Amplitude ----->');
 title('Unti step function');axis([-3 3 -0.1 1.2]);
