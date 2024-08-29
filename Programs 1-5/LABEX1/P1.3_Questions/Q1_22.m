% Program Q1_22A
% Generation of a sinusoidal sequence
n = 0:40;
f = 0.9;
phase = 0;
A = 1.5;
arg = 2 * pi * f * n - phase;
x = A * cos(arg);
clf; % Clear old graph
stem(n, x); % Plot the generated sequence
axis([0 40 -2 2]);
grid;
title('Sinusoidal Sequence');
xlabel('Time index n');
ylabel('Amplitude');
axis;
