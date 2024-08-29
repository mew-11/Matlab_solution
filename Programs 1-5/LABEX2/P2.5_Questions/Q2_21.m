% Program Q2_21
% Compute the impulse response y
clf;
N = 40;
num = [0.9 -0.45 0.35 0.002];
den = [1.0 0.71 -0.46 -0.62];
% input: unit pulse
x = [1 zeros(1, N - 1)];
% output
y = filter(num, den, x);
% Plot the impulse response
% NOTE: the time axis will be WRONG; h[0] will
% be plotted at n=1; but this will agree with
% the INCORRECT plotting that was also done
% by program P2_5.
stem(y);
xlabel('Time index n'); ylabel('Amplitude');
title('Impulse Response'); grid;
