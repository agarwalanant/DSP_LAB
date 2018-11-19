clc;
close all;
clear all;
[y, fs]=audioread('sample.wav');
y1=y;
figure(1);
plot(y1);
fs1=fs;
figure(2);
freqz(y1); %frequency response of original speech signal
fc1=5500; %cutoff freq
w1=fc1/(2*fs1); %normalised freq
%Design a LPF with above specification

[b1, a1]=butter(5,w1,'low'); %5th order butterworth filter
[h1, w1]=freqz(b1, a1, 1024); %freq response of the filter
x1=filter(b1,a1,y1); %pass the i/p signal from filter
figure(3);
freqz(x1);
title('Cute off 5.5kHz');
figure(4);
plot(w1/(pi*2*fs1),abs(h1));

title('frequency response of 5th order filter');
ylabel('Magnitude');
xlabel('Freq(Hz)');
grid on
soundsc(x1,fs1);



fc2=4000; %cutoff freq
w2=fc2/(2*fs1); %normalised freq
%Design a LPF with above specification

[b2, a2]=butter(5,w2,'low'); %5th order butterworth filter
[h2, w2]=freqz(b2, a2, 1024); %freq response of the filter
x2=filter(b2,a2,y1); %pass the i/p signal from filter
figure(5);
freqz(x2);
title('Cute off 4kHz');
figure(6);
plot(w2/(pi*2*fs1),abs(h2));

title('frequency response of 5th order filter');
ylabel('Magnitude');
xlabel('Freq(Hz)');
grid on
soundsc(x2,fs1);


