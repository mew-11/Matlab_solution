% Program P4_4
% Stability Test
clf;
den = input('Denominator coefficients = ');
ki = poly2rc(den);
disp('Stability test parameters are');
disp(ki);
