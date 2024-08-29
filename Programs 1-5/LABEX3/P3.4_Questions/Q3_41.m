% Program P3_11
% Relations between the DFTs of the Periodic Even
% and Odd Parts of a Real Sequence
x = [1 2 4 2 6 32 6 4 2 zeros(1, 247)];
x1 = [x(1) x(256:-1:2)];
xe = 0.5 * (x + x1);
XF = fft(x);
XEF = fft(xe);
clf;
k = 0:255;
subplot(2, 2, 1);
plot(k / 128, real(XF)); grid;
ylabel('Amplitude');
title('Re(DFT\{x[n]\})');
subplot(2, 2, 2);
plot(k / 128, imag(XF)); grid;
ylabel('Amplitude');
title('Im(DFT\{x[n]\})');
subplot(2, 2, 3);
plot(k / 128, real(XEF)); grid;
xlabel('Time index n'); ylabel('Amplitude');
title('Re(DFT\{x_{e}[n]\})');
subplot(2, 2, 4);
plot(k / 128, imag(XEF)); grid;
xlabel('Time index n'); ylabel('Amplitude');
title('Im(DFT\{x_{e}[n]\})');
