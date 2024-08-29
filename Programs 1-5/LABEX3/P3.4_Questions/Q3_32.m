% Program P3_8B
% Circular Time-Shifting Property of DFT
clf;
x = [0 2 4 6 8 10 12 14 16]; % original sequence x
N = length(x) - 1; n = 0:N; % time index vector
% set y equal to the circular shift left of x
y = circshift(x, 5);
XF = fft(x); % DFT of x
YF = fft(y); % DFT of y
subplot(2, 2, 1);
% plot the spectral magnitudes of the original and shifted sequences
stem(n, abs(XF)); grid;
title('Magnitude of DFT of Original Sequence');
xlabel('Frequency index k');
ylabel('|X[k]|');
subplot(2, 2, 2);
stem(n, abs(YF)); grid;
title('Magnitude of DFT of Circularly Shifted Sequence');
xlabel('Frequency index k');
ylabel('|Y[k]|');
% plot the spectral phases of the original and shifted sequences
subplot(2, 2, 3);
stem(n, angle(XF)); grid;
title('Phase of DFT of Original Sequence');
xlabel('Frequency index k');
ylabel('arg(X[k])');
subplot(2, 2, 4);
stem(n, angle(YF)); grid;
title('Phase of DFT of Circularly Shifted Sequence');
xlabel('Frequency index k');
ylabel('arg(Y[k])');
