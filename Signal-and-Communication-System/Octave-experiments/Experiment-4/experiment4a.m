clc; clear; close all;

% time parameters
dt = 0.001;
t  = -1:dt:8;     % choose a window long enough to show response

% unit step
us = @(t,to) double(t>=to);

% signals
x = exp(-t).*us(t,0);            % x(t)=e^{-t}u(t)
h = us(t,0) - us(t,1);           % h(t)=u(t)-u(t-1) (width 1 rectangle)

% numeric convolution (scale by dt)
y_num = conv(x,h)*dt;

% time axis for convolution result: t_conv goes from t(1)+t(1) to t(end)+t(end)
t_conv = (t(1)+t(1)):dt:(t(end)+t(end));

% truncate/align to same viewing window as t
% (we'll compare on t_compare which lies inside t_conv)
t_compare =  -0.5:dt:6;  % region for comparison/plot

% analytic y(t) evaluated on t_compare
y_ana = zeros(size(t_compare));
% cases
idx1 = t_compare < 0;
idx2 = (t_compare >= 0) & (t_compare < 1);
idx3 = t_compare >= 1;

y_ana(idx1) = 0;
y_ana(idx2) = 1 - exp(-t_compare(idx2));
y_ana(idx3) = (exp(1)-1).*exp(-t_compare(idx3));  % (e-1)*e^{-t}

% extract numeric y for the same t_compare from y_num
% find indices in t_conv that correspond to t_compare
[~, idx_start] = min(abs(t_conv - t_compare(1)));
idx_end = idx_start + length(t_compare) - 1;
y_num_slice = y_num(idx_start:idx_end);

% plotting
figure('Position',[100 100 800 600]);

subplot(2,1,1);
plot(t, x,'b','LineWidth',1.5); hold on;
plot(t, h,'k','LineWidth',1.5);
legend('x(t)=e^{-t}u(t)','h(t)=u(t)-u(t-1)');
xlabel('t'); ylabel('Amplitude');
title('Signals x(t) and h(t)'); grid on;
axis([-0.5 6 -0.2 1.2]);

subplot(2,1,2);
plot(t_compare, y_num_slice,'r','LineWidth',1.5); hold on;
plot(t_compare, y_ana,'--b','LineWidth',1.5);
legend('Numerical conv (conv)','Analytical result');
xlabel('t'); ylabel('y(t)');
title('y(t)=x(t)*h(t) — numeric vs analytic'); grid on;
axis([-0.5 6 -0.05 1.2]);

% compute and display max absolute error
max_err = max(abs(y_num_slice - y_ana));
fprintf('Max absolute error between numeric and analytic y(t): %g\n', max_err);

