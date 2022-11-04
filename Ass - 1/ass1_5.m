%A particular linear and time-invariant system is described by the
%difference equation:

% y(n) - 0.5y(n-1) + 0.25y(n-2) = x(n) + 2x(n-1) + x(n-3)

% a) Determine the stability of the system.
%Therefore: We need to use the filter function
%Let us take coefficients of both y (here a) and x (here b)

a = [1 -5/10 25/100];
b = [1 2 1];
y = 0:100;
x = filter(a,b,y);
subplot(211),plot(x,y);
title('Difference Equation of following equation');
xlabel('x');
ylabel('y');
B = isstable(x);
disp(B);
% b) Determine and plot the impulse response of the system over 0<=n<=100. 
z = dirac(x);
subplot(212),stem(z,y);
title('Impulse Response of Difference Equation of following equation');
xlabel('z');
ylabel('y');
% c) Determine the stability from this impulse response
B2 = isstable(z);
disp(B2);