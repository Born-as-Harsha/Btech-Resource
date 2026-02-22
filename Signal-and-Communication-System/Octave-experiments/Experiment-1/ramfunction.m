t = -2:0.0001:6;
% Define unit ramp function
y = ur(t,0);
figure();
%%%% uncomment the following two lines and observe the results
% plot(t,zeros(size(t)),'k','LineWidth',1); hold on; %Horizontal line as time index
% plot(zeros(size(t)),t,'k','LineWidth',1); hold on; %Vertical line as magnitude index
plot(t, y,'m','LineWidth',3); grid on;
set(gca,'fontsize',14);
xlabel('time ----->');ylabel('Amplitude ----->');
 title('Unti Ramp function');axis([-2 6 -0.2 6]);
