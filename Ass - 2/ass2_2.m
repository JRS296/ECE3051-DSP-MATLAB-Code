%SubTask 2 - Frequency analysis of amplitude-modulated discrete-time
%signal-The discrete-time ð¥(ð) = cos 2ðð1ð + cos 2ðð2ð, ð1 = 1/18, ð2 =
% 5/128, modulates the amplitude of the carrier ð¥ð(ð) = cos 2ðððð with 
% ðð = 50/128. The resulting amplitude-modulated signal is ð¥am(ð) =
% ð¥(ð)ð¥ð (ð) = ð¥(ð)cos 2ðððð

%a) Sketch the signals ð¥(ð), ð¥ð(ð), and ð¥ðð(ð), 0 â¤ ð â¤ 255.
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

%b) Compute and sketch the 128-point DFT of the signal ð¥ðð(ð), 0 â¤ ð â¤ 127. N=128
dftxam1 = fft(xam(1:128),128);%calculating 128 point dft for 0<=n<=127
plot(abs(dftxam1));
title('128-point DFT of the signal ð¥ðð(ð), 0 â¤ ð â¤ 127');
xlabel('x(n)');
ylabel('n');

%c) Compute and sketch the 128-point DFT of the signal ð¥ðð(ð), 0 â¤ ð â¤ 99.
dftxam2 = fft(xam(1:100),128);%calculating 128 point dft for 0<=n<=99
plot(abs(dftxam2));
title('128-point DFT of the signal ð¥ðð(ð), 0 â¤ ð â¤ 99');
xlabel('x(n)');
ylabel('n');

%d) Compute and sketch the 256-point DFT of the signal ð¥ðð(ð), 0 â¤ ð â¤ 179.
dftxam3 = fft(xam(1:180),256);%calculating 256 point dft for 0<=n<=179
plot(abs(dftxam3));
title('256-point DFT of the signal ð¥ðð(ð), 0 â¤ ð â¤ 179');
xlabel('x(n)');
ylabel('n');





