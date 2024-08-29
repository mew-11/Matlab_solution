% Program Q3_50
% Given numerator and denominator coefficient vectors for G(z),
% find and plot the first L samples of the impulse response, where
% the parameter L is input by the user.
%
clf;
% initialize
num = [2 5 9 5 3];
den = [5 45 2 1 1];
% Query user for parameter L
L = input('Enter the number of samples L: ');
% find impulse response
[g t] = impz(num, den, L);
%plot the impulse response
stem(t, g);
title(['First ', num2str(L), ' samples of impulse response']);
xlabel('Time Index n');
ylabel('h[n]');
