% Program P3_8
% Circular Time-Shifting Property of DFT
clf;
x = [0 2 4 6 8 10 12 14 16];
N = length(x)-1; n = 0:N;
y = circshift(x,5);
XF = fft(x);
YF = fft(y);
subplot(2,2,1)
stem(n,abs(XF));grid
title('Magnitude of DFT of Original Sequence');
subplot(2,2,2)
stem(n,abs(YF));grid
title('Magnitude of DFT of Circularly Shifted Sequence');
subplot(2,2,3)
stem(n,angle(XF));grid
title('Phase of DFT of Original Sequence');
subplot(2,2,4)
stem(n,angle(YF));grid
title('Phase of DFT of Circularly Shifted Sequence');
