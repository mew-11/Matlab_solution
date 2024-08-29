% Program Q2_35
% Generate the input sequence
clf;
n = 0:300;
a = pi / 600;
b = 0;
arg = a * n .* n + b * n;
x = cos(arg);
% Compute the output sequences
num1 = [0.5 0.27 0.77];
y1 = filter(num1, 1, x); % Output of System #1
den2 = [1 -0.53 0.46];
num2 = [0.45 0.5 0.45];
y2 = filter(num2, den2, x); % Output of System #2
% Plot the output sequences
subplot(2, 1, 1);
plot(n, y1); axis([0 300 -2 2]);
ylabel('Amplitude');
title('Output of System #1'); grid;
subplot(2, 1, 2);
plot(n, y2); axis([0 300 -2 2]);
xlabel('Time index n'); ylabel('Amplitude');
title('Output of System #2'); grid;
