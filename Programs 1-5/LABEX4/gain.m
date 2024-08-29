function [g,w] = gain(num,den)
% Computes the gain function in dB of a 
% transfer function at 256 equally spaced points 
% on the top half of the unit circle
% Numerator coefficients are in vector num
% Denominator coefficients are in vector den
% Frequency values are returned in vector w
% Gain values are returned in vector g
w = 0:pi/255:pi;
h = freqz(num,den,w);
g = 20*log10(abs(h));
