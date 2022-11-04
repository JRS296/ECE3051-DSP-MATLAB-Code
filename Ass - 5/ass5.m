%Task - 5: Realization of Adaptive Differential Pulse Code Modulation
%(ADPCM)
%Name: Jonathan Rufus Samuel (20BCT0332)
%Course: ECE3051 - ELA

%Obtain the output waveforms pertaining to the individual blocks that formulate an
%Adaptive Differential Pulse Code Modulation scheme given in Figure 1. This
%modulation scheme forms the essential block of the G.726 ITU transactions for audio
%compression.

%-----Transmitter-------
%1) Base Signal (Data in):
syms x(n);
x(n) = 1/pi * (2*sin(9*pi*n/10) - sin(8*pi*n/10));
t = -50:50; %t = -20:20;
subplot(421),plot(t,x(t));
title('Signal x(n) - Data In/Base Signal');
xlabel('time (t)');
ylabel('Magnitude (x(n))'); 
grid;

%2) Sampler (d1)
fs = 20;
t = -50:50;
x1 = modulate(double(x(t)),5,fs,'amssb');
subplot(422),stem(t,x1);
title('Signal x1(n) - Signal after QAM Modulation');
xlabel('time (t)');
ylabel('Magnitude (x1(n))');
grid;

%3) Signal after Inverse Discrete Fourier Transform (IFFT) 
x2 = ifft(x1);
t = -50:50;
subplot(423),stem(t,x2);
title('Signal x2(n) - Signal after Inverse Fourier Transform');
xlabel('time (t)');
ylabel('Magnitude (x2(n))');
grid;

%4) Signal after Digital to Analog Conversion
x3 = x2;
subplot(424),plot(t,x3);
title('Signal x3(n) - Signal after conversion to Analog');
xlabel('time (t)');
ylabel('Magnitude (x3(n))');
grid;
%i.e. Data in ----> Baseband OFDM Signal

%-----Receiver-------
%5) Signal after Analog to Digital Conversion
%i.e. Baseband OFDM Signal ----> Data Out
y = x3;
subplot(425),stem(t,y);
title('Signal y(n) - Signal after conversion to Digital');
xlabel('time (t)');
ylabel('Magnitude (y(n))');
grid;
%6) Signal after Discrete Fourier Transform (FFT)
y1 = fft(y);
t = -50:50;
subplot(426),plot(t,y1);
title('Signal y1(n) - Signal after Fourier Transform');
xlabel('time (t)');
ylabel('Magnitude (y1(n))');
grid;

%7) Signal after QPSK/QAM modulation transform (here choose QPSK)
fs = 20;
t = -50:50;
y2 = modulate(double(y1),5,fs,'amssb');
subplot(427),stem(t,y3);
title('Signal y2(n) - Signal after QAM De-Modulation');
xlabel('time (t)');
ylabel('Magnitude (y2(n))');
grid;

%8) Final Data Out Signal after various stages of transmission
y3 = y2;
t = -50:50;
subplot(428),plot(t,y3);
title('Signal y3(n) - Data Out Signal');
xlabel('time (t)');
ylabel('Magnitude (y3(n))');
grid;

