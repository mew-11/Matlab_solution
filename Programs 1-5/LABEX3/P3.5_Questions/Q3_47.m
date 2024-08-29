% Program Q3_47
% Given numerator and denominator coefficient vectors for G(z),
% - compute and display poles and zeros
% - compute and display factored form of G(z)
% - generate pole-zero plot
% NOTE: the lab book says to use tf2zp. For a rational function
% in z^-1, it's better to use tf2zpk.
clf;
% initialize
num = [2 5 9 5 3];
den = [5 45 2 1 1];
% compute poles and zeros and display
[z p k] = tf2zpk(num, den);
disp('Zeros:');
disp(z);
disp('Poles:');
disp(p);
input('Hit <return> to continue...');
% compute and display factored form of G(z)
[sos k] = zp2sos(z, p, k)
input('Hit <return> to continue...');
% generate pole-zero plot
zplane(z, p);
