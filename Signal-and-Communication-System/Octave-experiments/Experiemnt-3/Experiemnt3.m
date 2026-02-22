% Define the time vector
t = -3:0.001:3;

% Define unit step function
u = @(t) double(t >= 0); % Returns 1 where t >= 0, else 0
x = @(t) u(t);           % x(t) is the unit step

% Define transformed signals
y1 = x(t - 1);   % x(t - 1): delayed by 1
y2 = x(t + 1);   % x(t + 1): advanced by 1

y4 = x(-t);      % x(-t): time-reversed

% Plotting
figure;

% x(t - 1)
subplot(2,2,1);
plot(t, zeros(size(t)), 'k', 'LineWidth', 1); hold on;
plot(zeros(size(t)), t, 'k', 'LineWidth', 1); hold on;
plot(t, y1, 'r', 'LineWidth', 2);
title('x(t - 1)');
axis([-3 3 -0.1 1.5]); axis square;

% x(t + 1)
subplot(2,2,2);
plot(t, zeros(size(t)), 'k', 'LineWidth', 1); hold on;
plot(zeros(size(t)), t, 'k', 'LineWidth', 1); hold on;
plot(t, y2, 'b', 'LineWidth', 2);
title('x(t + 1)');
axis([-3 3 -0.1 1.5]); axis square;


% x(-t)
subplot(2,2,4);
plot(t, zeros(size(t)), 'k', 'LineWidth', 1); hold on;
plot(zeros(size(t)), t, 'k', 'LineWidth', 1); hold on;
plot(t, y4, 'g', 'LineWidth', 2);
title('x(-t)');
axis([-3 3 -0.1 1.5]); axis square;

