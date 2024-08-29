% Program Q1_27
% Generation of a Gaussian random sequence
% NOTE: if X is a random variable with zero mean and
% unity variance, then (aX + b) is a random variable
% with mean b and variance a^2. This follows from
% basic probability theory.
n = 0:74;
xmean = 0; % mean of x
xstd = sqrt(3); % standard deviation of x
rng('shuffle'); % new syntax to seed generator
% generate the sequence
x = xstd * randn(1, length(n)) + xmean;
% setup the graph and plot
clf; % Clear old graph
stem(n, x); % Plot the generated sequence
xmax = max(abs(x));
Ylim = round(2 * (xmax + 0.5)) / 2;
axis([0 length(n) -Ylim Ylim]);
grid;
title('Gaussian Random Sequence');
xlabel('Time index n');
ylabel('Amplitude');
axis;
