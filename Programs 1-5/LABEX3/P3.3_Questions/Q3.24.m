% Program Q3_24
% Use a single N-point DFT to compute simultaneously the N-point
% DFT's of two real-valued N-point sequences.
clf;
%Initialize
N = 256; % length of signal
nn = [0:N - 1];
ntime = [-N / 2:N / 2 - 1];
g = (0.75) .^ abs(ntime); % signal g
h = (-0.9) .^ ntime; % signal h
% DFT's of g and h
GF = fft(g);
HF = fft(h);
x = g + i * h; % the composite signal x
% DFT of composite signal
XF = fft(x);
% DFT of g derived from composite DFT XF
XFstar = conj(XF);
XFstarmod = [XFstar(1) fliplr(XFstar(2:N))];
GF2 = 0.5 * (XF + XFstarmod);
HF2 = -i * 0.5 * (XF - XFstarmod);
abs(max(GF - GF2))
abs(max(HF - HF2))
% plot real and imag parts of direct computation of GF
figure(1); clf;
subplot(2, 2, 1); grid;
plot(nn, real(GF)); grid;
title('Two N-point DFT''s');
xlabel('Frequency index k');
ylabel('Re\{G[k]\}');
subplot(2, 2, 2);
plot(nn, imag(GF)); grid;
title('Two N-point DFT''s');
xlabel('Frequency index k');
ylabel('Im\{G[k]\}');
% plot real and imag parts of composite computation of GF
subplot(2, 2, 3); grid;
plot(nn, real(GF2)); grid;
title('Single N-point DFT');
xlabel('Frequency index k');
ylabel('Re\{G[k]\}');
subplot(2, 2, 4);
plot(nn, imag(GF2)); grid;
title('Single N-point DFT');
xlabel('Frequency index k');
ylabel('Im\{G[k]\}');
% plot real and imag parts of direct computation of HF
figure(2); clf;
subplot(2, 2, 1); grid;
plot(nn, real(HF)); grid;
title('Two N-point DFT''s');
xlabel('Freq index k');
ylabel('Re\{H[k]\}');
subplot(2, 2, 2);
plot(nn, imag(HF)); grid;
title('Two N-point DFT''s');
xlabel('Freq index k');
ylabel('Im\{H[k]\}');
% plot real and imag parts of composite computation of HF
subplot(2, 2, 3); grid;
plot(nn, real(HF2)); grid;
title('Single N-point DFT');
xlabel('Freq index k');
ylabel('Re\{H[k]\}');
subplot(2, 2, 4);
plot(nn, imag(HF2)); grid;
title('Single N-point DFT');
xlabel('Freq index k');
ylabel('Im\{H[k]\}');
