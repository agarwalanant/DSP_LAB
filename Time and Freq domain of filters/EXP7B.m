%WAP to determine time domain and freq domain response of the fixed windows(Hamming Hanning Blackman Rectangle) taking N 25 & 1024. 
clc
clear all
close all



N=1024;
x=0:512;
xb =0:0.0625:32;
black = 0.42-0.5*cos(2*pi*x/(N-1))+0.8*cos(4*pi*x/(N-1));
subplot(2,4,1)
plot(x,black);
title('Blackman (Time Domain)');
grid on;
subplot(2,4,5)
plot(xb,mag2db(fft(black)));
title('Blackman (Frequency Domain)');
grid on;

xn=0:1024;

hann = 0.5*(1-cos(2*pi*xn/N));
subplot(2,4,2)
plot(xn,hann);
title('hanning (Time Domain)');
grid on;
subplot(2,4,6)
plot(xn,mag2db(fft(hann)));
title('Hanning (Frequency Domain)');
grid on;

hamm = 0.54 - 0.46*cos(2*pi*xn/N);
subplot(2,4,3)
plot(xn,hamm);
title('Hamming (Time Domain)');
grid on;
subplot(2,4,7)
plot(xn,mag2db(fft(hamm)));
title('Hamming (Frequency Domain)');
grid on;

x=-512:512;
a = 1*(x>=-512);
b= 1*(x<=512);
rect = a.*b;

subplot(2,4,4)
plot(x,rect);
title('Reactangle (Time Domain)');
grid on;
subplot(2,4,8)
plot(x,mag2db(fft(rect)));
title('Rectangle (Frequency Domain)');
grid on;






