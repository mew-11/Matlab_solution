% Program P3_7B
% Illustration of Circular Shift of a Sequence
clf;
% initialize shift amount M
M = 6;
% initialize sequence a to be shifted
a = [0 1 2 3 4 5 6 7 8 9];
b = circshift(a, M); % perform the circular shift
L = length(a) - 1;
% plot the original sequence a and the circularly shifted sequence b
n = 0:L;
subplot(2, 1, 1);
stem(n, a); axis([0, L, min(a), max(a)]);
title('Original Sequence');
xlabel('time index n');
ylabel('a[n]');
subplot(2, 1, 2);
stem(n, b); axis([0, L, min(a), max(a)]);
title(['Sequence Obtained by Circularly Shifting by ', num2str(M), 'Samples']);
xlabel('time index n');
ylabel('b[n]');
