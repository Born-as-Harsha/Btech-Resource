% Define time
t = -2:0.01:2;

% Define unit step function
u = @(t) double(t >= 0);

% Define signal x(t) using step functions
x = (u(t+1) - u(t)) + (1 - t).*(u(t) - u(t-1));

% Even and odd components
x_even = 0.5*(x + fliplr(x));
x_odd  = 0.5*(x - fliplr(x));

% Plot original signal
figure;
subplot(3,1,1);
plot(t, x, 'r','LineWidth',1.5);
title('Original Signal x(t)');
xlabel('t'); ylabel('x(t)'); grid on;

% Plot even component
subplot(3,1,2);
plot(t, x_even, 'b','LineWidth',1.5);
title('Even Component x_e(t)');
xlabel('t'); ylabel('x_e(t)'); grid on;

% Plot odd component
subplot(3,1,3);
plot(t, x_odd, 'g','LineWidth',1.5);
title('Odd Component x_o(t)');
xlabel('t'); ylabel('x_o(t)'); grid on;

