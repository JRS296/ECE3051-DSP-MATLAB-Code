%SubTask 2 - Frequency analysis of amplitude-modulated discrete-time
%signal-The discrete-time 𝑥(𝑛) = cos 2𝜋𝑓1𝑛 + cos 2𝜋𝑓2𝑛, 𝑓1 = 1/18, 𝑓2 =
% 5/128, modulates the amplitude of the carrier 𝑥𝑐(𝑛) = cos 2𝜋𝑓𝑐𝑛 with 
% 𝑓𝑐 = 50/128. The resulting amplitude-modulated signal is 𝑥am(𝑛) =
% 𝑥(𝑛)𝑥𝑐 (𝑛) = 𝑥(𝑛)cos 2𝜋𝑓𝑐𝑛

%a) Sketch the signals 𝑥(𝑛), 𝑥𝑐(𝑛), and 𝑥𝑎𝑚(𝑛), 0 ≤ 𝑛 ≤ 255.
n = 0:255;
f1 = 1/18; f2 = 5/128;
fc = 50/128;
xn = cos(2*pi*f1*n)+cos(2*pi*f2*n);%x[n]
xcn = cos(2*pi*fc*n);%xc[n]
xam = xn.*xcn;%xam[n]
subplot(3,1,1);
stem(n,xn);
title('Signal x(n)');
xlabel('x(n)');
ylabel('n');
subplot(3,1,2);
stem(n,xcn);
title('Signal xc(n)');
xlabel('xc(n)');
ylabel('n');
subplot(3,1,3);
stem(n,xam);
title('Signal xam(n)');
xlabel('xam(n)');
ylabel('n');

%b) Compute and sketch the 128-point DFT of the signal 𝑥𝑎𝑚(𝑛), 0 ≤ 𝑛 ≤ 127. N=128
dftxam1 = fft(xam(1:128),128);%calculating 128 point dft for 0<=n<=127
plot(abs(dftxam1));
title('128-point DFT of the signal 𝑥𝑎𝑚(𝑛), 0 ≤ 𝑛 ≤ 127');
xlabel('x(n)');
ylabel('n');

%c) Compute and sketch the 128-point DFT of the signal 𝑥𝑎𝑚(𝑛), 0 ≤ 𝑛 ≤ 99.
dftxam2 = fft(xam(1:100),128);%calculating 128 point dft for 0<=n<=99
plot(abs(dftxam2));
title('128-point DFT of the signal 𝑥𝑎𝑚(𝑛), 0 ≤ 𝑛 ≤ 99');
xlabel('x(n)');
ylabel('n');

%d) Compute and sketch the 256-point DFT of the signal 𝑥𝑎𝑚(𝑛), 0 ≤ 𝑛 ≤ 179.
dftxam3 = fft(xam(1:180),256);%calculating 256 point dft for 0<=n<=179
plot(abs(dftxam3));
title('256-point DFT of the signal 𝑥𝑎𝑚(𝑛), 0 ≤ 𝑛 ≤ 179');
xlabel('x(n)');
ylabel('n');





