% Program P5_6
% Determines the decimal equivalent of a
% binary number in sign-magnitude form
bin = input('Type in the binary fraction = ');
b = length(bin) - 1; d = 0;
for k = 1:b
	%d = d + bin(k+1)*2^(b-k+1);
    d = d + bin(k+1)*2^(-k);
end
if sign(bin(1)) == 0;
	dec =  d;
else
	dec = - d;
end
disp('The decimal equivalent is ');
disp(dec);
