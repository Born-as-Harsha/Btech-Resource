clc; clear all; close all;

% Time axis
t = -3:0.0001:3;

% Define Unit Step Function
us = @(t,to) double(t >= to);

% Signals
y1 = us(t,0);   % u(t)
y2 = us(t,2);   % u(t-2)  --> delayed by 2
y3 = us(t,-1);  % u(t+1)  --> advanced by 1

% Plot
figure();

% --- Subplot 1: u(t) ---
subplot(1,3,1);
plot(t,zeros(size(t)),'k','LineWidth',1); hold on; % Horizontal axis
plot(zeros(size(t)),t,'k','LineWidth',1); hold on; % Vertical axis
plot(t, y1,'r','LineWidth',2);
title('Unit Step u(t)');
axis([-3 3 -0.1 1.5]); axis square

% --- Subplot 2: u(t-2) ---
subplot(1,3,2);
plot(t,zeros(size(t)),'k','LineWidth',1); hold on;
plot(zeros(size(t)),t,'k','LineWidth',1); hold on;
plot(t, y2,'m','LineWidth',2);
title('Delayed Step u(t-2)');
axis([-3 3 -0.1 1.5]); axis square

% --- Subplot 3: u(t+1) ---
subplot(1,3,3);
plot(t,zeros(size(t)),'k','LineWidth',1); hold on;
plot(zeros(size(t)),t,'k','LineWidth',1); hold on;
plot(t, y3,'b','LineWidth',2);
title('Advanced Step u(t+1)');
axis([-3 3 -0.1 1.5]); axis square

