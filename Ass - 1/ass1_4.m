%Given the following difference equation:
% y(n) - y(n-1) + 0.9y(n-2) = x(n); for all n

%Therefore: We need to use the filter function
%Let us take coefficients of both y (here a) and x (here b)

a = [1 -1 9/10];
b = 1;
y = -20:100;
x = filter(a,b,y);
subplot(321),plot(x,y);
title('Difference Equation of following equation');
xlabel('x');
ylabel('y');
subplot(322),stem(x,y);
title('Difference Equation of following equation');
xlabel('x');
ylabel('y');

% a) Calculate and plot the impulse response h(n) at n = -20,. . . ,100.
subplot(323),plot(dirac(x));
title('impulse response h(n) at n = -20,. . . ,100.');
xlabel('x');
ylabel('y');
subplot(324),stem(dirac(x));
title('impulse response h(n) at n = -20,. . . ,100.');
xlabel('x');
ylabel('y');

% b) Calculate and plot the unit step response s(n) at n = -20, ....., 100.
subplot(325),plot(heaviside(x));
title('unit step response s(n) at n = -20,. . . ,100.');
xlabel('x');
ylabel('y');
subplot(326),stem(heaviside(x));
title('unit step response s(n) at n = -20,. . . ,100.');
xlabel('x');
ylabel('y');
% c) Is the system specified by h(n) stable?
B = isstable(dirac(x));
disp(B);
