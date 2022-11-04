%Task - 2: SAMPLING AND RECONSTRUCTION OF SIGNALS
%Name: Jonathan Rufus Samuel (20BCT0332)
%Course: ECE3051 - ELA

%SubTask 1 - Consider the two systems shown in the below fig.

%a. Sketch the spectra of the various signals if 𝑥𝑎(𝑡) has the Fourier transform shown 
% in the below fig. and 𝐹𝑠 = 2𝐵. How are 𝑦1(𝑡) and 𝑦2(𝑡) related to 𝑥𝑎(𝑡)?
<SHOWN IN NOTES>

%b. Determine 𝑦1(𝑡) and 𝑦2(𝑡) if 𝑥𝑎(𝑡) = cos 2π𝐹0𝑡, 𝐹0 = 20Hz, and 𝐹𝑠 = 50𝐻𝑧 and 𝐹𝑠 = 30Hz.
%Case a) Fs = 50Hz
n0 = -20:20;
syms x(n);
x(n) = cos(4*pi*n/5);
subplot(321),plot(n0,x(n0));
title('Sequence #1.1 - x(n)');
xlabel('x(n)');
ylabel('n0');

syms y(n);
y(n) = 1/2 + (1/2)*cos(8*pi*n/5);
subplot(322),plot(n0,y(n0));
title('Sequence #1.2 - y(n)');
xlabel('y(n)');
ylabel('n0');

syms y1(t);
y1(t) = 1/2 + cos(20*pi*t)*(1/2);
subplot(323),plot(n0,y1(n0));
title('Sequence #1.3 - y1(t) and y2(t)');
xlabel('y1(t)');
ylabel('t');

%Case b) Fs = 30Hz
n0 = -20:20;
syms x(n);
x(n) = cos(2*pi*n/3);
subplot(324),plot(n0,x(n0));
title('Sequence #2.1 - x(n)');
xlabel('x(n)');
ylabel('n0');

syms y(n);
y(n) = x(n)^2;
subplot(325),plot(n0,y(n0));
title('Sequence #2.2 - y(n)');
xlabel('y(n)');
ylabel('n0');

syms y1(t);
y1(t) = 1/2 + cos(20*pi*t)*(1/2);
subplot(326),plot(n0,y1(n0));
title('Sequence #2.3 - y1(t) and y2(t)');
xlabel('y1(t)');
ylabel('t');