%Task - 4: ECG Signal Analysis
%Name: Jonathan Rufus Samuel (20BCT0332)
%Course: ECE3051 - ELA
%DOS: 23.10.2022

%Using Abdominal and Direct Fetal ECG Database from Physionet, perform the
%following subtasks:

%Sub-Task 1 - Plot the ECG Graph
data_r1 = edfread("r01.edf","SelectedSignals","Direct_1");
data2_r1 = table2array(data_r1);
data3_r1 = vertcat(data2_r1{:});
subplot(2,1,1);
plot(data3_r1(1:5000));
title('Base ECG Signal - Direct1');
xlabel('time (t)');
ylabel('Magnitude (x(n))'); 

fetus_data_r1 = edfread("r01.edf","SelectedSignals","Abdomen_1");
fetus_data_r2 = table2array(fetus_data_r1);
fetus_data_r3 = vertcat(fetus_data_r2{:});
subplot(2,1,2);
plot(fetus_data_r3(1:5000));
title('Additional ECG Signal (from Fetus) - Abdomen1');
xlabel('time (t)');
ylabel('Magnitude (x(n))'); 


%Sub-Task 2 - Analyse the stationarity of the given ECG signal through 
% appropriate waveforms:
plot(data3_r1(1:5000));
title('Base ECG Signal - Direct1');
xlabel('time (t)');
ylabel('Magnitude (x(n))'); 
%Stationarity: A stationary time series is one whose properties do not 
% depend on the time at which the series is observed. As seen above,
% waveform changes w.r.t time, over intervals 1 - 5000. Therefore,
% Stationarity property does not hold for goven signal.

%Sub-Task 3 - Detect the diverse ECG abnormalities if any with respect to 
% the given ECG signal:
%Samplling of Base Signal:
samp1 = data3_r1(1:300);
plot(samp1);
title('Sample ECG Signal - Direct1');
xlabel('time (t)');
ylabel('Magnitude (x(n))'); 

%Auto-Correlation between Sample & Base Signal:
plot(autocorr(data3_r1));
title('Auto-Correlation of Sample with Base Signal');
xlabel('time (t)');
ylabel('Magnitude (x(n))');

%Cross-Correlation between Base Signal & Fetus Signal:
plot(xcorr(data3_r1,fetus_data_r3));
title('Cross-Correlation of Sample with Base Signal');
xlabel('time (t)');
ylabel('Magnitude (x(n))');