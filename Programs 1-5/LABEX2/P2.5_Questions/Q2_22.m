% Program Q2_22
% Compute the step response s
clf;
N = 40;
n = 0:N - 1;
num = [2.2403 2.4908 2.2403];
den = [1.0 -0.4 0.75];
% input: unit step
x = [ones(1, N)];
% output
y = filter(num, den, x);
% Plot the step response
stem(n, y);
xlabel('Time index n'); ylabel('Amplitude');
title('Step Response'); grid;
