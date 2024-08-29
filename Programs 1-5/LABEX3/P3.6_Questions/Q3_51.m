% Program Q3_51
% Given numerator and denominator coefficient vectors for G(z),
% find and plot the first L samples of the impulse response, where
% the parameter L is input by the user.
%
clf;
% initialize
num = [2 5 9 5 3];
den = [5 45 2 1 1];
% partial fraction expansion
[r p k] = residuez(num, den)
