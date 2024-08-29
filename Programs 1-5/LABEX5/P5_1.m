% Program P5_1
% Illustration of the Sampling Process 
% in the Time-Domain
clf;
t = 0:0.0005:1;
f = 13;
xa = cos(2*pi*f*t);
subplot(2,1,1)
plot(t,xa);grid
xlabel('Time, msec');ylabel('Amplitude');
title('Continuous-time signal x_{a}(t)');
axis([0 1 -1.2 1.2])
subplot(2,1,2);
T = 0.1;
n = 0:T:1;
xs = cos(2*pi*f*n);
k = 0:length(n)-1;
stem(k,xs);grid;
xlabel('Time index n');ylabel('Amplitude');
title('Discrete-time signal x[n]');
axis([0 (length(n)-1) -1.2 1.2])
