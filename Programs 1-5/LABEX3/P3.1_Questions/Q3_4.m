% Program P3_1D
% Evaluation of the DTFT
clf;
% Compute the frequency samples of the DTFT
w = -4 * pi:8 * pi / 511:4 * pi;
num = [1 3 5 7 9 11 13 15 17];
den = 1;
h = freqz(num, den, w);
% Plot the DTFT
subplot(2, 1, 1)
plot(w / pi, real(h)); grid
title('Real part of H(e^{j\omega})')
xlabel('\omega /\pi');
ylabel('Amplitude');
subplot(2, 1, 2)
plot(w / pi, imag(h)); grid
title('Imaginary part of H(e^{j\omega})')
xlabel('\omega /\pi');
ylabel('Amplitude');
pause
subplot(2, 1, 1)
plot(w / pi, abs(h)); grid
title('Magnitude Spectrum |H(e^{j\omega})|')
xlabel('\omega /\pi');
ylabel('Amplitude');
subplot(2, 1, 2)
plot(w / pi, angle(h)); grid
title('Phase Spectrum arg[H(e^{j\omega})]')
xlabel('\omega /\pi');
ylabel('Phase in radians');
