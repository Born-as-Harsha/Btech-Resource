% Define the time vector
t = -2:0.01:2;

% Create the step function
x = sign(t);

% Plot the function
plot(t, x, 'LineWidth', 2);

% Set labels, title, and grid
xlabel('t');
ylabel('x(t)');
title('Figure (a)');
ylim([-1.5, 1.5]);
grid on;
