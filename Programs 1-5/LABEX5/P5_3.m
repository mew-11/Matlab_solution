% Program P5_3
% Illustration of the Aliasing Effect 
% in the Frequency-Domain
clf;
t = 0:0.005:10;
xa = 2*t.*exp(-t);
subplot(2,2,1)
plot(t,xa);grid
xlabel('Time, msec');ylabel('Amplitude');
title('Continuous-time signal x_{a}(t)');
subplot(2,2,2)
wa = 0:10/511:10;
ha = freqs(2,[1 2 1],wa);
plot(wa/(2*pi),abs(ha));grid;
xlabel('Frequency, kHz');ylabel('Amplitude');
title('|X_{a}(j\Omega)|');
axis([0 5/pi 0 2]);
subplot(2,2,3)
T = 1;
n = 0:T:10;
xs = 2*n.*exp(-n);
k = 0:length(n)-1;
stem(k,xs);grid;
xlabel('Time index n');ylabel('Amplitude');
title('Discrete-time signal x[n]');
subplot(2,2,4)
wd = 0:pi/255:pi;
hd = freqz(xs,1,wd);
plot(wd/(T*pi), T*abs(hd));grid;
xlabel('Frequency, kHz');ylabel('Amplitude');
title('|X(e^{j\omega})|');
axis([0 1/T 0 2])
