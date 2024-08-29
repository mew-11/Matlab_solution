% Program P4_2
% Gain Response of a Moving Average Lowpass Filter
clf;
M = 20;
num = ones(1,M)/M;
[g,w] = gain(num,1);
plot(w/pi,g);grid
axis([0 1 -50 0.5])
xlabel('\omega /\pi');ylabel('Gain in dB');
title(['M = ', num2str(M)])
