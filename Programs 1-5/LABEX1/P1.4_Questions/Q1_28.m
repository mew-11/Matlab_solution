% Program Q1_28
% Generates the "deterministic stochastic process"
n = 0:30;
f = 0.1;
Amax = 4;
phimax = 2 * pi;
rng('shuffle'); % seed generator
A = Amax * rand;
% NOTE: successive calls to rand without arguments
% return a random sequence of scalars. Since this
% random sequence is "white" (uncorrelated), it is
% not necessary to re-seed the generator for phi.
for trial = 1:5
    phi = phimax * rand;
    % generate the sequence
    arg = 2 * pi * f * n + phi;
    x = A * cos(arg);
    % plot
    figure(trial);
    clf; % Clear any old graph
    stem(n, x); % Plot the generated sequence
    Ylim = round(2 * (Amax + 0.5)) / 2;
    axis([0 length(n) -Ylim Ylim]);
    grid;
    title('Sinusoidal Sequence with Random Amplitude and Phase');
    xlabel('Time index n');
    ylabel('Amplitude');
    axis;
end
