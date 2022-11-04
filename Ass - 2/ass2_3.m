%SubTask 3 - Determine the signal 𝑥(𝑛) if its Fourier transform is as
%given in the below figure (Figure shown in final document)

%(Problem Working shown in final Document)

%Inverse Fourier Transform for the given figure:
% x(n) = 1/pi[2sin(9pi/10) - sin(8pi/10)]; x(0) = 3/10

syms x(n);
x(n) = 1/pi * (2*sin(9*pi*n/10) - sin(8*pi*n/10));
t = -50:50; %t = -20:20;
subplot(211),plot(t,x(t));
title('Signal x(n) - Derived by Inverse Fourier Transform');
xlabel('time (t)');
ylabel('Magnitude (x(n))');
grid;

%Verification of x(0)
disp(x(0));