t = linspace(-pi,2*pi,121);
x = 1.15*square(2*t);

plot(t/pi,x,'.-',t/pi,1.15*sin(2*t))
xlabel('t / \pi')
grid on