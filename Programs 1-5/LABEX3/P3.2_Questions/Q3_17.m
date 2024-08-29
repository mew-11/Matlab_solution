% Program P3_5B
% Modulation Property of DTFT
clf;
w = -pi:2 * pi / 255:pi; % freqency vector for evaluating DTFT
x1 = [1 3 5 7 9 11 13 15 17]; % first sequence
x2 = [1 -1 1 -1 1 -1 1 -1 1]; % second sequence
% y is the time domain pointwise product of x1 and x2
y = x1 .* x2;
h1 = freqz(x1, 1, w); % DTFT of sequence x1
h2 = freqz(x2, 1, w); % DTFT of sequence x2
h3 = freqz(y, 1, w); % DTFT of sequence y
% plot the magnitude spectrum of x1
subplot(3, 1, 1)
plot(w / pi, abs(h1)); grid
title('Magnitude Spectrum of First Sequence')
xlabel('\omega /\pi');
ylabel('Amplitude');
% plot the magnitude spectrum of x2
subplot(3, 1, 2)
plot(w / pi, abs(h2)); grid
title('Magnitude Spectrum of Second Sequence')
xlabel('\omega /\pi');
ylabel('Amplitude');
% plot the magnitude spectrum of y
% it should be 1/2pi times the convolution of the DTFT's
% of the two original sequences.
subplot(3, 1, 3)
plot(w / pi, abs(h3)); grid
title('Magnitude Spectrum of Product Sequence')
xlabel('\omega /\pi');
ylabel('Amplitude');
