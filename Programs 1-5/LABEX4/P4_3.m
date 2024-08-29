% Program P4_3
% Zero Locations of Linear Phase FIR Filters
clf;
b = [1 -8.5 30.5 -63];
num1 = [b 81 fliplr(b)];
num2 = [b 81 81 fliplr(b)];
num3 = [b 0 -fliplr(b)];
num4 = [b 81 -81 -fliplr(b)];
n1 = 0:length(num1)-1;
n2 = 0:length(num2)-1;
subplot(2,2,1); stem(n1,num1);
xlabel('Time index n');ylabel('Amplitude'); grid;
title('Type 1 FIR Filter');
subplot(2,2,2); stem(n2,num2);
xlabel('Time index n');ylabel('Amplitude'); grid;
title('Type 2 FIR Filter');
subplot(2,2,3); stem(n1,num3);
xlabel('Time index n');ylabel('Amplitude'); grid;
title('Type 3 FIR Filter');
subplot(2,2,4); stem(n2,num4);
xlabel('Time index n');ylabel('Amplitude'); grid;
title('Type 4 FIR Filter');
pause
subplot(2,2,1); zplane(num1,1);
title('Type 1 FIR Filter');
subplot(2,2,2); zplane(num2,1);
title('Type 2 FIR Filter');
subplot(2,2,3); zplane(num3,1);
title('Type 3 FIR Filter');
subplot(2,2,4); zplane(num4,1);
title('Type 4 FIR Filter');
disp('Zeros of Type 1 FIR Filter are');
disp(roots(num1));
disp('Zeros of Type 2 FIR Filter are');
disp(roots(num2));
disp('Zeros of Type 3 FIR Filter are');
disp(roots(num3));
disp('Zeros of Type 4 FIR Filter are');
disp(roots(num4));
