function y = circshift(x,M)
% Develops a sequence y obtained by
% circularly shifting a finite-length
% sequence x by M samples
if abs(M) > length(x)
	M = rem(M,length(x));
end
if M < 0
	M = M + length(x);
end
y = [x(M+1:length(x)) x(1:M)];
