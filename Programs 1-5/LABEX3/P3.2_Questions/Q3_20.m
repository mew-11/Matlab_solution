% Program P3_6B
% Time Reversal Property of DTFT
clf;
w = -pi:2 * pi / 255:pi; % freqency vector for evaluating DTFT
% original ramp sequence
% note: num is nonzero for 0 <= n <= 3.
num = [1 2 3 4];
L = length(num) - 1;
h1 = freqz(num, 1, w); % DTFT of original ramp sequence
% h2 contains the sample values of h1 in reverse order, but
% it is NOT the time reversed version of h1. The time
% reversed version must be nonzero for -3 <= n <= 0. However,
% h2 is nonzero for 0 <= n <= 3. So, to get the time reversed
% version of h1, we still need to time SHIFT h2 to the left.
% This is accomplished in the frequency domain using the time
% shift property of the DTFT. Thus, h3, which IS the time
% reversed version of h1, is obtained by multiplying h2 times
% a linear phase term to accomplish the required time shift.
h2 = freqz(fliplr(num), 1, w);
h3 = exp(w * L * i) .* h2;
% plot the magnitude spectrum of the original ramp sequence
subplot(2, 2, 1)
plot(w / pi, abs(h1)); grid
title('Magnitude Spectrum of Original Sequence', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Amplitude');
% plot the magnitude spectrum of the time reversed ramp sequence
subplot(2, 2, 2)
plot(w / pi, abs(h3)); grid
title('Magnitude Spectrum of Time-Reversed Sequence', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Amplitude');
% plot the phase spectrum of the original ramp sequence
subplot(2, 2, 3)
plot(w / pi, angle(h1)); grid
title('Phase Spectrum of Original Sequence', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Phase in radians');
% plot the phase spectrum of the time reversed ramp sequence
subplot(2, 2, 4)
plot(w / pi, angle(h3)); grid
title('Phase Spectrum of Time-Reversed Sequence', 'FontSize', 8)
xlabel('\omega /\pi');
ylabel('Phase in radians');
