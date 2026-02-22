% Define the time vector
t = -1:0.01:3;

% Create the rectangular pulse
x = rectpuls(t-1, 2);

% Plot the function
plot(t, x, 'LineWidth', 2);

% Set labels, title, and grid
xlabel('t');
ylabel('x(t)');
title('Figure (b)');
ylim([-0.5, 1.5]);
grid on;
