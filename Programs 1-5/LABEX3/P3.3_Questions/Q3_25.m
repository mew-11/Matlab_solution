% Program Q3_25A
% Use a single N-point complex-valued DFT to compute the 2N-point
% DFT of a 2N-point real-valued sequence.
%
clf;
%Initialize constants
N = 128; % length of the complex-valued DFT
TwoN = 2 * N; % length of the real-valued sequence
W2N = exp(-i * pi / N);
k = [0:TwoN - 1];
% create 2N-point signal v[n]
v = (-0.7 .^ k);
% create two N-point signals
g = downsample(v, 2); % g[n] = v[2n]
h = downsample(v, 2, 1); % h[n] = v[2n+1]
% N-point complex-valued composite signal x[n]
x = g + i * h;
% Use one N-point complex DFT to compute simultaneously
% G[k] and H[k] as in Q3.24.
XF = fft(x); % N-point complex DFT of x[n]
% DFT's G[k] and H[k] derived from composite DFT X[k]
XFstar = conj(XF);
XFstarmod = [XFstar(1) fliplr(XFstar(2:N))];
GF = 0.5 * (XF + XFstarmod);
HF = -i * 0.5 * (XF - XFstarmod);
% 2N-point DFT V[k]
VF = [GF GF] + (W2N .^ k) .* [HF HF];
% For Comparison, compute directly the 2N-point DFT V[k]
VF2 = fft(v);
% Print Sanity Check
abs(max(VF - VF2))
% plot real and imag parts of V[k] computed by complex N-point DFT
subplot(2, 2, 1);
plot(k, real(VF)); grid;
title('Complex N-point DFT');
xlabel('Frequency index k');
ylabel('Re\{V[k]\}');
subplot(2, 2, 2);
plot(k, imag(VF)); grid;
title('Complex N-point DFT');
xlabel('Frequency index k');
ylabel('Im\{V[k]\}');
% plot real and imag parts of V[k] computed by 2N-point DFT
subplot(2, 2, 3);
plot(k, real(VF2)); grid;
title('Real 2N-point DFT');
xlabel('Frequency index k');
ylabel('Re\{V[k]\}');
subplot(2, 2, 4);
plot(k, imag(VF2)); grid;
title('Real 2N-point DFT');
xlabel('Frequency index k');
ylabel('Im\{V[k]\}');
