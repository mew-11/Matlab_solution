% Program P5_2
% Illustration of Aliasing Effect in the Time-Domain
% Program adapted from [Kra94] with permission from
% The Mathworks, Inc., Natick, MA.
clf;
T = 0.1;f = 13;
n = (0:T:1)';
xs = cos(2*pi*f*n);
t = linspace(-0.5,1.5,500)';
ya = sinc((1/T)*t(:,ones(size(n))) - (1/T)*n(:,ones(size(t)))')*xs;
plot(n,xs,'o',t,ya);grid;
xlabel('Time, msec');ylabel('Amplitude');
title('Reconstructed continuous-time signal y_{a}(t)');
axis([0  1  -1.2 1.2]);

