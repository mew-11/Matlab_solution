% Program Q1_5
% Generation of an ADVANCED Unit Step Sequence
clf;
% Generate a vector from -10 to 20
n = -10:20;
% Generate the ADVANCED unit step sequence
sd = [zeros(1, 3) ones(1, 28)];
% Plot the ADVANCED unit step sequence
stem(n, sd);
xlabel('Time index n'); ylabel('Amplitude');
title('ADVANCED Unit Step Sequence');
axis([-10 20 0 1.2]);
