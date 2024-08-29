% Program Q3_49
% Given the poles and zeros of G(z), compute and display the rational
% z-transform.
clf;
% initialize
z = [0.3 2.5 -0.2 + i * 0.4 -0.2 - i * 0.4]';
p = [0.5 -0.75 0.6 + i * 0.7 0.6 - i * 0.7]';
k = 3.9;
% find numerator and denominator polynomial coefficients
[num den] = zp2tf(z, p, k)
