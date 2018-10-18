
% pass band freq=1.5kHz
% transition width = 0.5Khz
% sampling freq= 8KHz
% stop band attenuation> 20dB

clc;
clear all;
close all;
fp=1500;
t=500;
fs=8000;
wc=2*pi*(fp/fs);
N1=ceil(0.9*fs/t);
N2=ceil(3.1*fs/t);
N3=ceil(3.3*fs/t);
N4=ceil(3.5*fs/t);
n1=1:N1


rec(n1)=ones(1,N1);
hd1=2*fp*sin(n1.*wc);
h1(n1)=hd1(n1).*rec(n1);
hf1=fft(abs(h1(n1)))
subplot(2,2,1);
plot(n1,hf1,'k');
title('Rectangular Window');
xlabel('frequency');
ylabel('amplitude');
grid on


n2=1:N2
han(n2)=0.5-0.5*cos(2*pi*n2/N2-1);
hd2=2*fp*sin(n2.*wc);
h2(n2)=hd2(n2).*han(n2);
hf2=fft(abs(h2(n2)))
subplot(2,2,2);
plot(n2,hf2,'k');
title('Hanning Window');
xlabel('frequency');
ylabel('amplitude');
grid on

n3=1:N3
ham(n3)=0.54-0.46*cos(2*pi*n3/N3-1);
hd3=2*fp*sin(n3.*wc);
h3(n3)=hd3(n3).*ham(n3);
hf3=fft(abs(h3(n3)))
subplot(2,2,3);
plot(n3,hf3,'k');
title('Hamming Window');
xlabel('frequency');
ylabel('amplitude');
grid on

n4=1:N4
blc(n4)=0.42-0.5*cos(2*pi*n4/N4-1)+0.08*cos(4*pi*n4/N4-1);
hd4=2*fp*sin(n4.*wc);
h4(n4)=hd4(n4).*blc(n4);
hf4=fft(abs(h4(n4)))
subplot(2,2,4);
plot(n4,hf4,'k');
title('Blackman Window');
xlabel('frequency');
ylabel('amplitude');
grid on