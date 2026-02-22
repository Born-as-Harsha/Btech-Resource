% Define the time vector
t = -1:0.01:3;

% Generate a triangular pulse centered at t = 1 with a width of 2
% tripuls is centered at 0 by default, so shift t by 1
y = tripuls(t - 1, 2);

% Plot the waveform
figure; % Open a new figure window
plot(t, y, 'LineWidth', 2);
xlabel('t');
ylabel('x(t)');
title('Figure (c)');
ylim([-0.5, 1.5]); % Set y-axis limits for better visualization
grid on;

