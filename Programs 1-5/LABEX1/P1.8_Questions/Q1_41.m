% Program Q1_41A
% Generation of the square wave in Fig. 1.1(a)
n = 0:30;
f = 0.1;
phase = 0;
duty = 60;
A = 2.5;
arg = 2 * pi * f * n + phase;
x = A * square(arg, duty);
clf; % Clear old graph
stem(n, x); % Plot the generated sequence
axis([0 30 -3 3]);
grid;
title('Square Wave Sequence of Fig. 1.1(a)');
xlabel('Time index n');
ylabel('Amplitude');
axis;

% Program Q1_41B
% Generation of the square wave in Fig. 1.1(b)
n = 0:30;
f = 0.1;
phase = 0;
duty = 30;
A = 2.5;
arg = 2 * pi * f * n + phase;
x = A * square(arg, duty);
clf; % Clear old graph
stem(n, x); % Plot the generated sequence
axis([0 30 -3 3]);
grid;
title('Square Wave Sequence of Fig. 1.1(b)');
xlabel('Time index n');
ylabel('Amplitude');
axis;

% Program Q1_41C
% Generation of the square wave in Fig. 1.2(a)
n = 0:50;
f = 0.05;
phase = 0;
peak = 1;
A = 2.0;
arg = 2 * pi * f * n + phase;
x = A * sawtooth(arg, peak);
clf; % Clear old graph
stem(n, x); % Plot the generated sequence
axis([0 50 -2 2]);
grid;
title('Sawtooth Wave Sequence of Fig. 1.2(a)');
xlabel('Time index n');
ylabel('Amplitude');
axis;

% Program Q1_41D
% Generation of the square wave in Fig. 1.2(b)
n = 0:50;
f = 0.05;
phase = 0;
peak = 0.5;
A = 2.0;
arg = 2 * pi * f * n + phase;
x = A * sawtooth(arg, peak);
clf; % Clear old graph
stem(n, x); % Plot the generated sequence
axis([0 50 -2 2]);
grid;
title('Sawtooth Wave Sequence of Fig. 1.2(b)');
xlabel('Time index n');
ylabel('Amplitude');
axis;
