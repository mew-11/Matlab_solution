% Program P1_1
% Generation of a Unit Sample Sequence
clf;
% Generate a vector from -10 to 20
n = -10:1:20;
% Generate the unit sample sequence
u = [zeros(1, 10) 1 zeros(1, 20)];
% Plot the unit sample sequence
stem(n, u);
xlabel('Time index n'); ylabel('Amplitude');
title('Unit Sample Sequence');
axis([-10 20 0 1.2]);
