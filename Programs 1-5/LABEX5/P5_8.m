% Program P5_8
% Determines the two's-complement equivalent of a
% negative binary fraction in ones'-complement form
b = input('Type in the binary fraction = ');
F = length(b);
twoscomp = ones(1,F);
c = 1;
for k = F:-1:2
	if b(k) & c == 1;
		twoscomp(k) = 0; c = 1; 
	else 
		twoscomp(k) = b(k) | c; c = 0; 
	end
end
disp('Twos-complement equivalent is = ');
disp(twoscomp)
