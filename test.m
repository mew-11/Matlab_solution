% Program P1_7
% Generation of a swept frequency sinusoidal sequence
n = 0:01:100;
a = pi/250; %
b = 2*pi/5; %
arg = a*n.*n + b*n;
x = 2*sin(arg);
clf;
stem(n, x);
axis([0,100,-2,2]);
title('Swept-Frequency Sinusoidal Signal');
xlabel('Time index n');
ylabel('Amplitude');
grid; 
axis;