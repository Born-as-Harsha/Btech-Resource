clear all; close all; clc;

f0=1000; % Frequency of sin wave
fs1=10000; % Sampling Frequency Fs > 2Fm
fs2=2000; % Sampling Frequency Fs < 2Fm
n=0:1:20;
x=cos(2*pi*f0*n/fs1);
x1=cos(2*pi*f0*n/fs2);

figure();
plot(n,x, 'm','LineWidth',2);
title('Original Signal');

figure();
plot(n,x, 'b','LineWidth',2);
hold on;
stem(n,x,'--r','fill','LineWidth',2);
plot(n,x1,'k','LineWidth',2);
title('Sampling');
legend('Original Signal','Sampling with Fs>2Fm','Sampling With Fs<2Fm');

