% Program P3_4B
% Convolution Property of DTFT
clf;
w = -pi:2 * pi / 255:pi; % freqency vector for evaluating DTFT
x1 = [1 3 5 7 9 11 13 15 17]; % first sequence
x2 = [1 -2 3 -2 1]; % second sequence
y = conv(x1, x2); % time domain convolution of x1 and x2
h1 = freqz(x1, 1, w); % DTFT of sequence x1
h2 = freqz(x2, 1, w); % DTFT of sequence x2
% hp is the pointwise product of the two DTFT's
hp = h1 .* h2;
% h3 is the DTFT of the time domain convolution;
% it should be the same as hp
h3 = freqz(y, 1, w);
% plot the magnitude of the product of the two original spectra
subplot(2, 2, 1)
plot(w / pi, abs(hp)); grid
title('Product of Magnitude Spectra', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Amplitude');
% plot the magnitude spectrum of the time domain convolution
subplot(2, 2, 2)
plot(w / pi, abs(h3)); grid
title('Magnitude Spectrum of Convolved Sequence', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Amplitude');
% plot the phase of the product of the two original spectra
subplot(2, 2, 3)
plot(w / pi, angle(hp)); grid
title('Sum of Phase Spectra', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Phase in radians');
% plot the phase spectrum of the time domain convolution
subplot(2, 2, 4)
plot(w / pi, angle(h3)); grid
title('Phase Spectrum of Convolved Sequence', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Phase in radians');
