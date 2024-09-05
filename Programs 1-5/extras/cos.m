% Define the signal frequency
signalFrequency = 90; % in Hz

% Define the number of cycles to plot
numberOfCycles = 3; % for example, to plot the first 3 cycles

% Define the sampling rates
SR1 = 200; % First sampling rate in Hz
SR2 = 1500; % Second sampling rate in Hz

% Calculate the period of the cosine signal
signalPeriod = 1 / signalFrequency; % Period of the signal in seconds

% Calculate the time span for N cycles
timeSpan = numberOfCycles * signalPeriod;

% Create time vectors for the first few cycles
t1 = 0:1/SR1:timeSpan; % Time vector for first sampling rate
t2 = 0:1/SR2:timeSpan; % Time vector for second sampling rate

% Sample the cosine wave for the first few cycles
x1 = cos(2 * pi * signalFrequency * t1); % Sampled signal at first sampling rate
x2 = cos(2 * pi * signalFrequency * t2); % Sampled signal at second sampling rate

% Plot the sampled signals
figure; % Create a new figure
plot(t1, x1, 'bo-', t2, x2, 'rx-'); % Plot both signals on the same graph
xlabel('Time (s)'); % Label for the x-axis
ylabel('Amplitude'); % Label for the y-axis
title('Sampled Cosine Signal for First Few Cycles'); % Title of the plot
legend('SR=200', 'SR=1500'); % Legend to distinguish the two sampled rates