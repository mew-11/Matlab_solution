% Program P3_3DFT
% Compute and plot the L-point DFT of an N-point signal, L >= N.
clf;
%Initialize
N = 200; % length of signal
L = 256; % length of DFT
nn = [0:N - 1];
kk = [0:L - 1];
% the signal x
xR = [0.1 * (1:100) zeros(1, N - 100)]; % real part
xI = [zeros(1, N)]; % imag part
x = xR + i * xI;
% DFT
XF = fft(x, L);
% plot xR and xI
subplot(3, 2, 1); grid;
plot(nn, xR); grid;
title('Re\{x[n]\}');
xlabel('Time index n');
ylabel('Amplitude');
subplot(3, 2, 2);
plot(nn, xI); grid;
title('Im\{x[n]\}');
xlabel('Time index n');
ylabel('Amplitude');
% plot real and imag parts of DFT
subplot(3, 2, 3);
plot(kk, real(XF)); grid;
title('Re\{X[k]\}');
xlabel('Frequency index k');
ylabel('Amplitude');
subplot(3, 2, 4);
plot(kk, imag(XF)); grid;
title('Im\{X[k]\}');
xlabel('Frequency index k');
ylabel('Amplitude');
% IDFT
xx = ifft(XF, L);
% plot real and imaginary parts of the IDFT
subplot(3, 2, 5);
plot(kk, real(xx)); grid;
title('Real part of IDFT\{X[k]\}');
xlabel('Time index n');
ylabel('Amplitude');
subplot(3, 2, 6);
plot(kk, imag(xx)); grid;
title('Imag part of IDFT\{X[k]\}');
xlabel('Time index n');
ylabel('Amplitude');
