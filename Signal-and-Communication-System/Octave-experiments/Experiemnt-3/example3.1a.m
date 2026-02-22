clc; clear all; close all;

% Time axis
t = -3:0.0001:3;

% Define Delta Function (discrete-time approximation)
ud = @(t,to) double(t==to);   % 1 at t=to, 0 otherwise

% Signals
y1 = ud(t,0);       % δ(t)
y2 = 1.2*ud(t,0);   % 1.2 δ(t)
y3 = -2*ud(t,0);    % -2 δ(t)

% Plot
figure();

% --- Subplot 1: δ(t) ---
subplot(1,3,1);
stem(t, y1,'b','LineWidth',2,'Marker','none');
title('delta(t)');
axis([-3 3 -0.1 1.5]); axis square

% --- Subplot 2: 1.2 δ(t) ---
subplot(1,3,2);
stem(t, y2,'m','LineWidth',2,'Marker','none');
title('1.2delta(t)');
axis([-3 3 -0.1 1.5]); axis square

% --- Subplot 3: -2 δ(t) ---
subplot(1,3,3);
stem(t, y3,'k','LineWidth',2,'Marker','none');
title('-2delta(t)');
axis([-3 3 -2.2 0.5]); axis square

