clc;t = -3:0.01:3;
u = @(t) double(t >= 0);

xa = -1*u(-t) + 1*u(t);
xb = u(t) - u(t - 2);
xc = t .* (t >= 0 & t < 1) + (-t + 2) .* (t >= 1 & t <= 2);

figure;

subplot(3,1,1);
plot(t, xa, 'LineWidth', 2);
grid on;
title('(a) Step from -1 to 1');
xlabel('t');
ylabel('x(t)');

subplot(3,1,2);
plot(t, xb, 'LineWidth', 2);
grid on;
title('(b) Rectangular Pulse');
xlabel('t');
ylabel('x(t)');

subplot(3,1,3);
plot(t, xc, 'LineWidth', 2);
grid on;
title('(c) Triangular Pulse');
xlabel('t');
ylabel('x(t)');

