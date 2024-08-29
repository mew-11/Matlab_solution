% Program Q1_38
% Generation of a swept frequency sinusoidal sequence
n = 0:100;
a = pi / 500;
b = pi / 5;
arg = a * n .* n + b * n;
x = cos(arg);
clf;
stem(n, x);
axis([0, 100, -1.5, 1.5]);
title('Swept-Frequency Sinusoidal Signal');
xlabel('Time index n');
ylabel('Amplitude');
grid; axis;
