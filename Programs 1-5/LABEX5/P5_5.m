% Program P5_5
% Determines the binary equivalent of a
% decimal number in sign-magnitude form
d = input('Type in the decimal fraction = ');
b = input('Type in the desired wordlength = ');
d1 = abs(d);
beq = [zeros(1,b)];
for k = 1:b
	int = fix(2*d1);
	beq(k) = int;
	d1 = 2*d1 - int;
end
if sign(d) == -1; 
	bin = [1 beq];
else 
	bin = [0 beq];
end
disp('The binary equivalent is');
disp(bin)
