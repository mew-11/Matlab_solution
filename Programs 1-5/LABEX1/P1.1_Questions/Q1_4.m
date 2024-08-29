% Program Q1_4
% Generation of a Unit Step Sequence
clf;
% Generate a vector from -10 to 20
n = -10:20;
% Generate the unit step sequence
s = [zeros(1, 10) ones(1, 21)];
% Plot the unit step sequence
stem(n, s);
xlabel('Time index n'); ylabel('Amplitude');
title('Unit Step Sequence');
axis([-10 20 0 1.2]);
