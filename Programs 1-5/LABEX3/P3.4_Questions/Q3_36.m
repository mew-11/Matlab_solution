% Program P3_9
% Circular Convolution Property of DFT
g1 = [1 2 3 4 5 6]; g2 = [1 -2 3 3 -2 1];
ycir = circonv(g1, g2);
disp('Result of circular convolution = '); disp(ycir)
G1 = fft(g1); G2 = fft(g2);
yc = real(ifft(G1 .* G2));
disp('Result of IDFT of the DFT products = '); disp(yc)
