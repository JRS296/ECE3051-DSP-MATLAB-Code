%Task - 1: GENERATION OF ELEMENTARY SIGNALS AND SYSTEM ANALYSIS
%Name: Jonathan Rufus Samuel (20BCT0332)
%Course: ECE3051 - ELA

%SubTask 1 - Generate the elementary signals that are employed for characterization of random
%signals. Also, generate a sinusoidal signal and subject the same to the following basic
%signal processing operations
%a. Time Shifting / Delaying (TD)
%b. Folding / Reflection (FD)
%c. Verify, whether TD[FD]=FD[TD]
%d. Convolution
%e. Correlation
%Illustrate the above operations with relevant waveforms.

%Elementary Functions:
%Zer0 Function
a = zeros(1 ,5);
b = a;
subplot(331),stem(b);
title('Zeros Function');
xlabel('Time');
ylabel('Magnitude');
grid;

%Ones Function
a = ones(1 ,5);
b = a;
subplot(332),stem(b);
title('Ones Function');
xlabel('Time');
ylabel('Magnitude');
grid;

%Impulse Function
a = zeros(1 ,4);
b = [a,1,a];
subplot(333),stem(b);
title('Impulse Function');
xlabel('time');
ylabel('Magnitude');
grid;

%Unit Step Function
a = zeros(1 , 4);
b = ones(1, 4);
c = [a,1,b];

t = (-1:0.01:5)'; 
% Start with all zeros: 
unitstep = zeros(size(t)); 
% But make everything corresponding to t>=1 one:
unitstep(t>=0) = 1; 
plot(t,unitstep,'b','linewidth',3) 
% Repeat, with everything shifted to the right by 1 unit: 
unitstep2 = zeros(size(t)); 
unitstep2(t>=2) = 1; 
hold on
plot(t,unitstep2,'r:','linewidth',2)

subplot(334),stem(c);
title('Unit Step Function');
xlabel('time');
ylabel('Magnitude');
grid;

%Sine Function
a = 0:15:360;
b = sind(a);
subplot(335),stem(b);
title('Sine Function');
xlabel('time');
ylabel('Magnitude');
grid;

%Cosine Function
a = 0:15:360;
b = cosd(a);
subplot(336),stem(b);
title('Cosine Function');
xlabel('time');
ylabel('Magnitude');
grid;

%Exponential Signal
a = 1:20;
b = exp(a);
subplot(337),stem(b); %plot(b)
title('Exponential Function');
xlabel('time');
ylabel('Magnitude');
grid;

%Ramp Function
a = 1:10;
b = a;
subplot(338),stem(b);
title('Ramp Function');
xlabel('time');
ylabel('Magnitude');
grid;

%Parabolic Signal
a = linspace(-5,5,10);
b = 0.5*a.^2;
subplot(339),stem(a,b);
title('Parabolic Function');
xlabel('time');
ylabel('Magnitude');
grid;


%Generate a sinusoidal signal and subject the same to the following basic
a = 0:15:360;
b = sind(a);
subplot(311),stem(b);
title('Base Sinusoidal Function');
xlabel('time');
ylabel('Magnitude');
grid;

%signal processing operations:
%a. Time Shifting / Delaying (TD)
a = 0:15:360;
b = sind(a+30);
subplot(312),stem(b);
title('Time Delayed Sinusoidal Function');
xlabel('time');
ylabel('Magnitude');
grid;

%b. Folding / Reflection (FD)
a = 0:15:360;
b = sind(-a);
subplot(313),stem(b);
title('Folded Sinusoidal Function');
xlabel('time');
ylabel('Magnitude');
grid;

%c. Verify, whether TD[FD]=FD[TD]
a = 0:15:360;
x1 = sind(-sind(a+30));
y1 = sind(sind(-a-30));
subplot(211),stem(x1);
title('FD[TD] Function');
xlabel('time');
ylabel('Magnitude');
grid;
subplot(212),stem(y1);
title('TD[FD] Function');
xlabel('time');
ylabel('Magnitude');
grid;

%d. Convolution
Fs = 10000;
Ts = 1/Fs;
fc = 1000;
Tc = 1/fc;
t = 0:Ts:Tc;
% LTI impulse response h(t) = exp(-1000*t)
h = exp(-1000*t);
% angular frequency w = 2*pi*fc
w = 2*pi*fc;
% the signal x(t) = sin(wc*t)
x = sin(w*t);
% convolution of x(t) and h(t)
y = conv(x,h,'same');
subplot(3, 1, 1);
plot(t, h, 'LineWidth', 2);
grid on;
xlabel('t');
ylabel('h');
subplot(3, 1, 2);
plot(t, x, 'LineWidth', 2)    
grid on;
xlabel('t');
ylabel('x');
subplot(3, 1, 3);
plot(t, y, 'LineWidth', 2)
grid on;
hold on
stem(t,y)
xlabel('t');
ylabel('y = x**h');

%e. Correlation
a = 0:15:360;
x = sind(a+30);
y = sind(-a);
R = corrcoef(x,y);
disp("The Result is: ");
disp(R);