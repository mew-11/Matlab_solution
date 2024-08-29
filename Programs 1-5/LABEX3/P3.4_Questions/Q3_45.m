% Program P3_12B
% Parseval's Relation
x = [(1:128) (128:-1:1)];
XF = fft(x);
a = sum(x .* x)
b = round(sum(XF .* conj(XF)) / 256)
