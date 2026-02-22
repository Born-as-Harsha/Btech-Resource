clear all; close all; clc;
fs=30000;%Sample frequency
N=5000;%Number of samples
Ts=1/fs; % Sampling interval -------------------------------------------
t = -(N/2)*Ts:Ts:((N/2)-1)*Ts;
% t = (-N/2:1:(N/2)-1)*Ts;
%%% 500 Hz Sinusoidal signal
fm = 500; %Signal frequency ---------------------------------
m = cos(2*pi*fm*t);
%%% Spectrum of Message signal -----------------------------------------
f1 = (-N/2:1:N/2-1)*fs/N;
M = (2/N)*fftshift(fft(m));
Ma = abs(M);
Mp = angle(M);
% ----------------------------------------------------------------------
%%%% 500 Hz Sinusoidal signal ----------
figure();
subplot(3,1,1);
plot(t,m/max(m), 'm', 'LineWidth',2);axis([-0.005 0.005 -1.2 1.2]);
xlabel('Time (seconds)');ylabel('Amplitude');title('500 Hz Sinusoidal signal');
grid on;
%%%% Magnitude Spectrum of signal
subplot(3,1,2);
plot(f1,Ma/max(Ma),'r','Linewidth',2); axis([-800 800 -0.001 1.2]);
xlabel('frequency'); ylabel('Magnitude|'); title(' Magnitude Spectrum');
grid on;
%%%% Phase Spectrum of signal
subplot(3,1,3);
plot(f1,Mp,'b','Linewidth',2); axis([-800 800 -4 4]);
xlabel('frequency'); ylabel('Phase anglee'); title('Phase Spectrum');
grid on;
