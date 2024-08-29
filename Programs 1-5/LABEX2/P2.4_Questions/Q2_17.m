% Program Q2_17
% Modification of P2_4 to implement the system
% given by (2.16).
% Generate the input sequences
clf;
n = 0:40; D = 10; a = 3.0; b = -2;
x = a * cos(2 * pi * 0.1 * n) + b * cos(2 * pi * 0.4 * n);
xd = [zeros(1, D) x];
nd = 0:length(xd) - 1;
% Compute the output y[n]
y = (n .* x) + [0 x(1:40)];
% Compute the output yd[n]
yd = (nd .* xd) + [0 xd(1:length(xd) - 1)];
% Compute the difference output d[n]
d = y - yd(1 + D:41 + D);
% Plot the outputs
subplot(3, 1, 1)
stem(n, y);
ylabel('Amplitude');
title('Output y[n]'); grid;
subplot(3, 1, 2)
stem(n, yd(1:41));
ylabel('Amplitude');
title(['Output due to Delayed Input x[n -', num2str(D), ']']); grid;
subplot(3, 1, 3)
stem(n, d);
xlabel('Time index n'); ylabel('Amplitude');
title('Difference Signal'); grid;
