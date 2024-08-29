% Program Q2_18
% Modify P2_3 for Q2.18.
% Generate the input sequences
clf;
n = 0:40;
a = 2; b = -3;
x1 = cos(2 * pi * 0.1 * n);
x2 = cos(2 * pi * 0.4 * n);
x = a * x1 + b * x2;
y1 = (n .* x1) + [0 x1(1:40)]; % Compute the output y1[n]
y2 = (n .* x2) + [0 x2(1:40)]; % Compute the output y2[n]
y = (n .* x) + [0 x(1:40)]; % Compute the output y[n]
yt = a * y1 + b * y2;
d = y - yt; % Compute the difference output d[n]
% Plot the outputs and the difference signal
subplot(3, 1, 1)
stem(n, y);
ylabel('Amplitude');
title('Output Due to Weighted Input:a \ cdot x_{1}[n] + b \ cdot
x_{2}[n]');
subplot(3, 1, 2)
stem(n, yt);
ylabel('Amplitude');
title('Weighted Output: a \cdot y_{1}[n] + b \cdot y_{2}[n]');
subplot(3, 1, 3)
stem(n, d);
xlabel('Time index n'); ylabel('Amplitude');
title('Difference Signal');
