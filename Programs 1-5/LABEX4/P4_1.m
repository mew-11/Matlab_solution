% Program P4_1
% Impulse Response of Truncated Ideal Lowpass Filter
clf;
fc = 0.25;
n = [-6.5:1:6.5];
y = 2*fc*sinc(2*fc*n);k = n+6.5;
stem(k,y);title('N = 13');axis([0 13 -0.2 0.6]);
xlabel('Time index n');ylabel('Amplitude');grid;
