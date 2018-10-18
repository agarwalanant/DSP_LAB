clc;
clear all;
close all;
wp=20;
ws=30;
tw=10;
ws=100;
fc=(ws+wp)/2;
wc=2*pi*(fc/ws);
AlphaS=44;
AlphaA=0.1;
D=(AlphaS-7.95)./14.36;
Gamma=((0.5842*(AlphaS-21)^0.4)+0.07886*(AlphaS-21));
N=ceil(ws.*(D/tw)+1);
alpha=(N-1)/2;
n=0:1:N-1;
hd=sin((n-alpha).*wc)/(pi.*(n-alpha));
Wk=kaiser(N,Gamma);
W=hd.*Wk;


n1=0:0.01:pi;
H=freqz(W,1,n1);
subplot(2,1,1)
plot(n1/pi,20*log(abs(H)));
title('Magnitude plot of Kaiser window in frequency domain');
xlabel('Normalised Frequency');
ylabel('Magnitude in dB');

subplot(2,1,2)
plot(n1/pi,angle(H));
title('Phase plot of Kaiser Window in frequency domain');
xlabel('Normalised Frequency');
ylabel('Magnitude in dB');
