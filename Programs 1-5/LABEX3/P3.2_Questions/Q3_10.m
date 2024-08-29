% Program P3_3B
% Frequency-Shifting Properties of DTFT
clf;
w = -pi:2 * pi / 255:pi; % freqency vector for evaluating DTFT
wo = 0.4 * pi; % Amount of frequency shift in radians
% h1 is the DTFT of the original sequence
% h2 is the DTFT of the frequency shifted sequence
num1 = [1 3 5 7 9 11 13 15 17];
L = length(num1);
h1 = freqz(num1, 1, w);
n = 0:L - 1;
num2 = exp(wo * i * n) .* num1;
h2 = freqz(num2, 1, w);
% plot the DTFT magnitude of the original sequence
subplot(2, 2, 1)
plot(w / pi, abs(h1)); grid
title('Magnitude Spectrum of Original Sequence', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Amplitude');
% plot the DTFT magnitude of the freq shifted sequence
subplot(2, 2, 2)
plot(w / pi, abs(h2)); grid
title('Magnitude Spectrum of Frequency-Shifted Sequence', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Amplitude');
% plot the DTFT phase of the original sequence
subplot(2, 2, 3)
plot(w / pi, angle(h1)); grid
title('Phase Spectrum of Original Sequence', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Phase in radians');
% plot the DTFT phase of the shifted sequence
subplot(2, 2, 4)
plot(w / pi, angle(h2)); grid
title('Phase Spectrum of Frequency-Shifted Sequence', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Phase in radians');
