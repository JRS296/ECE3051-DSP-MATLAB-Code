% A simple digital differentitator is given by:
% y(n) = x(n) - x(n-1)
% which computes a backward first-order difference in the input sequence.
% Implement this differentiator on the following sequences and plot the 
% results. Comment on the appropriateness of this simple differentiator.
syms y(n);
n0 = 1:5;
% a) x(n) = 5[u(n)-u(n-20)]: a rectangular pose
syms x(n);
x(n) = 5*heaviside(n)-heaviside(n-20);
y(n) = x(n) - x(n-1);
subplot(321),stem(y(n0),n0);
title('Rectangular Pose - Stem');
xlabel('y(n)');
ylabel('n');
subplot(322),plot(y(n0),n0);
title('Rectangular Pose - Plot');
xlabel('y(n)');
ylabel('n');

% b) x(n) = n[u(n) - u(n-10)] + (20-n)[u(n-10)-u(n-20)]: a triangular pose.
x(n) = n*(heaviside(n)-heaviside(n-10)) + ((20-n)*(heaviside(n-10) - heaviside(n-20)));
y(n) = x(n) - x(n-1);
subplot(323),stem(y(n0),n0);
title('Triangular Pose - Stem');
xlabel('y(n)');
ylabel('n');
subplot(324),plot(y(n0),n0);
title('Triangular Pose - Plot');
xlabel('y(n)');
ylabel('n');

% c) x(n) = sin(pi*n/25) * [u(n) - u(n-100)]: a sinusoidal pulse
x(n) = sin((pi*n)/25) * (heaviside(n) - heaviside(n-100));
y(n) = x(n) - x(n-1);
subplot(325),stem(y(n0),n0);
title('Sinusoidal Pose - Stem');
xlabel('y(n)');
ylabel('n');
subplot(326),plot(y(n0),n0);
title('Sinusoidal Pose - Plot');
xlabel('y(n)');
ylabel('n');