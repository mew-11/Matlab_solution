% Program Q2_20
% Compute the impulse response y
clf;
N = 45;
num = [0.9 -0.45 0.35 0.002];
den = [1.0 0.71 -0.46 -0.62];
y = impz(num, den, N);
% Plot the impulse response
stem(y);
xlabel('Time index n'); ylabel('Amplitude');
title('Impulse Response'); grid;
