t = -3:0.001:3;
% Manual definition of rectangular pulse of width 1 centered at 0
y = double(abs(t) <= 0.5);
figure();
% Horizontal and vertical lines
plot(t, zeros(size(t)), 'k', 'LineWidth', 1); hold on;
plot(zeros(size(t)), t, 'k', 'LineWidth', 1); hold on;
% Rectangular pulse plot
plot(t, y, 'b', 'LineWidth', 3);
set(gca, 'fontsize', 14);
title('Rectangular Pulse'); grid on;
axis([-1 1 -0.1 1.2]);
xlabel('time ----->');
ylabel('Amplitude ----->');
