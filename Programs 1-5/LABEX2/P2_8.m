% Program P2_8
% Stability test based on the sum of the absolute
% values of the impulse response samples
clf;
num = [1 -0.8]; den = [1 1.5 0.9];
N = 200;
h = impz(num, den, N + 1);
parsum = 0;

for k = 1:N + 1;
    parsum = parsum + abs(h(k));
    if abs(h(k)) < 10 ^ (-6), break, end
end

% Plot the impulse response
n = 0:N;
stem(n, h)
xlabel('Time index n'); ylabel('Amplitude');
% Print the value of abs(h(k))
disp('Value ='); disp(abs(h(k)));
