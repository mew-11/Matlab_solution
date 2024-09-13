% Program Q2_2
% Modification of P2_1 to convert it to a high pass filter
% Generate the input signal
n = 0:100;
s1 = cos(2 * pi * 0.05 * n); % A low-frequency sinusoid
s2 = cos(2 * pi * 0.47 * n); % A high frequency sinusoid
x = s1 + s2;
% Implementation of high pass filter
M = input('Desired length of the filter = ');
% By comparing eq. (2.13) to (2.3), you can see that "num"
% actually contains the impulse response (times the constant
% M). What we are actually doing in Q2.2 is multiplying the
% impulse response of the low pass filter in P2_1 by the
% sequency (-1)^n. This shifts the low pass frequency
% response up to be centered at f=0.25, making it a high
% pass filter.
num = (-1) .^ (0:M - 1);
y = filter(num, 1, x) / M;
% Display the input and output signals
clf;
subplot(2, 2, 1);
plot(n, s1);
axis([0, 100, -2, 2]);
xlabel('Time index n'); ylabel('Amplitude');
title('Signal #1');
subplot(2, 2, 2);
plot(n, s2);
axis([0, 100, -2, 2]);
xlabel('Time index n'); ylabel('Amplitude');
title('Signal #2');
subplot(2, 2, 3);
plot(n, x);
axis([0, 100, -2, 2]);
xlabel('Time index n'); ylabel('Amplitude');
title('Input Signal');
subplot(2, 2, 4);
plot(n, y);
axis([0, 100, -2, 2]);
xlabel('Time index n'); ylabel('Amplitude');
title('Output Signal');
axis;
