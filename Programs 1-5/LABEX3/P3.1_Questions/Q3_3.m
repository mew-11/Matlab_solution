% Program P3_1B
% Evaluation of the DTFT
clf;
% Compute the frequency samples of the DTFT
% because 0 \leq w \leq pi is the default for "freqz",
% the vector "w" is now an output of freqz instead of an input.
N = 512;
num = [0.7 -0.5 0.3 1];
den = [1 0.3 -0.5 0.7];
[h, w] = freqz(num, den, N);
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
