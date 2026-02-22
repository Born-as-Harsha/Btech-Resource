clc; clear all; close all;

% Time axis
t = -3:0.0001:3;

% Define Unit Ramp Function
ur = @(t,to) (t-to).*(t>=to);

% Signals
y1 = ur(t,0);        % r(t)
y2 = -ur(t,0);       % -r(t)
y3 = 1.2*ur(t,0);    % 1.2 r(t)

% Plot
figure();

% --- Subplot 1: r(t) ---
subplot(1,3,1);
plot(t, y1,'b','LineWidth',2);
title('Ramp r(t)');
axis([-3 3 -0.1 3]); axis square

% --- Subplot 2: -r(t) ---
subplot(1,3,2);
plot(t, y2,'m','LineWidth',2);
title('-r(t)');
axis([-3 3 -3 0.5]); axis square

% --- Subplot 3: 1.2r(t) ---
subplot(1,3,3);
plot(t, y3,'k','LineWidth',2);
title('1.2r(t)');
axis([-3 3 -0.1 3.5]); axis square

