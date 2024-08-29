% Program Q3_40
% Linear Convolution via Circular Convolution
g1 = [1 2 3 4 5];
g2 = [2 2 0 1 1];
g1e = [g1 zeros(1, length(g2) - 1)];
g2e = [g2 zeros(1, length(g1) - 1)];
G1EF = fft(g1e);
G2EF = fft(g2e);
ylin = real(ifft(G1EF .* G2EF));
disp('Linear convolution via DFT = '); disp(ylin);
