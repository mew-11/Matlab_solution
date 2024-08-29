% Program P5_7
% Determines the ones'-complement equivalent of a
% binary number in sign-magnitude form
bin = input('Type in the binary number = ');
if sign(bin(1)) == 0;
	onescomp =  bin;
else
	bin(1) = 0;onescomp = ~bin;
end
disp('Ones-complement equivalent is');
disp(onescomp);
