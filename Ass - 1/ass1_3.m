%SubTask 3 - Generate and plot each of the following sequences over the indicated interval. 
%a) x(n) = 2delta(n+2) - delta(n-4), -5<=n<=5
n0 = -5:5; %range
syms x(n);
x(n) = 2*dirac(n+2) - dirac(n-4);
subplot(321),stem(x(n0),n0);
title('Sequence #1 - Stem');
xlabel('x(n)');
ylabel('n0');
subplot(322),plot(x(n0),n0);
title('Sequence #1');
xlabel('x(n)');
ylabel('n0');
grid;

%b) x(n) = n[u(n)-u(n-10)] + 10e^-0.3(n-10) [u(n-10) - u(n-20)]
n0 = -20:20; %range
syms x(n);
x(n) = n*(heaviside(n)-heaviside(n-10)) + (10*exp(-0.3*(n-10)) * (heaviside(n-10) - heaviside(n-20)));
subplot(323),stem(x(n0),n0);
title('Sequence #2 - Stem');
xlabel('x(n)');
ylabel('n0');
subplot(324),plot(x(n0),n0);
title('Sequence #2');
xlabel('x(n)');
ylabel('n0');
grid;

%c) x(n) = cos(0.04pi*n) + 0.2 * w(n), 0<=n<=50, where w(n) is a Gaussian
%Random Sequence with zero limit and unit variance.
n0 = 0:50; %range
syms x(n);
x(n) = cos(0.04*pi*n) + 0.2*normrnd(0,50);%normrnd(n);
subplot(325),stem(x(n0),n0);
title('Sequence #3 - Stem');
xlabel('x(n)');
ylabel('n0');
subplot(326),plot(x(n0),n0);
title('Sequence #3');
xlabel('x(n)');
ylabel('n0');
grid;