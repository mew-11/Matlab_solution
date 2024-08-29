% Program P3_2B
% Time-Shifting Properties of DTFT
clf;
w = -pi:2 * pi / 255:pi; % freqency vector for evaluating DTFT
D = 10; % Amount of time shift in samples
num = [1 2 3 4 5 6 7 8 9];
% h1 is the DTFT of original sequence
% h2 is the DTFT of the time shifted sequence
h1 = freqz(num, 1, w);
h2 = freqz([zeros(1, D) num], 1, w);
subplot(2, 2, 1)
% plot the DTFT magnitude of the original sequence
plot(w / pi, abs(h1)); grid
title('Magnitude Spectrum of Original Sequence', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Amplitude');
% plot the DTFT magnitude of the shifted sequence
subplot(2, 2, 2)
plot(w / pi, abs(h2)); grid
title('Magnitude Spectrum of Time-Shifted Sequence', 'FontSize', 8)
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
title('Phase Spectrum of Time-Shifted Sequence', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Phase in radians');
