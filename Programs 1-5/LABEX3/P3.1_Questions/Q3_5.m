% plot phase in degrees
subplot(2, 1, 2)
plot(w / pi, 180 * angle(h) / pi); grid
title('Phase Spectrum arg[H(e^{j\omega})]')
xlabel('\omega /\pi');
ylabel('Phase in degrees');
