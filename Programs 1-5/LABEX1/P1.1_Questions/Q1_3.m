% Program P1_1, MODIFIED for Q1.3
% Generation of a DELAYED Unit Sample Sequence
clf;
% Generate a vector from -10 to 20
n = -10:20;
% Generate the DELAYED unit sample sequence
u = [zeros(1, 21) 1 zeros(1, 9)];
% Plot the DELAYED unit sample sequence
stem(n, u);
xlabel('Time index n'); ylabel('Amplitude');
title('DELAYED Unit Sample Sequence');
axis([-10 20 0 1.2]);
