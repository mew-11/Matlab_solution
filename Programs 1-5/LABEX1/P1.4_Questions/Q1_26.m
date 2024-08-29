% Program Q1_26
% Generation of a uniform random sequence
% NOTE: if X is a random variable with mean zero
% and variance 1, then (aX + b) is a random variable
% with mean b and variance a^2. This follows from
% basic probability theory.
n = 0:99;
A = 2;
%rand('state',sum(100*clock)); % Obsolete syntax to "seed" the
generator
rng('shuffle'); % new syntax to seed generator
%
% rand(1,100) is uniform in [0,1]
% rand(1,100)-0.5 is uniform in [-0.5,0.5]
% 4*(rand(1,100)-0.5) is uniform in [-2,2]
x = 2 * A * (rand(1, length(n)) - 0.5);
clf; % Clear old graph
stem(n, x); % Plot the generated sequence
axis([0 length(n) -round(2 * (A + 0.5)) / 2 round(2 * (A + 0.5)) / 2]);
grid;
title('uniform Random Sequence');
xlabel('Time index n');
ylabel('Amplitude');
axis;
