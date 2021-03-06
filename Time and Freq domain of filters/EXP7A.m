%WAP to determine time domain and freq domain response of the fixed windows(Hamming Hanning Blackman Rectangle) taking N 25 & 1024. 
clc
clear all
close all



N=25;
x=0:30;
black = 0.42-0.5*cos(2*pi*x/(N-1))+0.8*cos(4*pi*x/(N-1));
subplot(2,4,1)
stem(x,black);
title('Blackman (Time Domain)');
xlabel('Samples')
ylabel('Amplitude')
grid on;
subplot(2,4,5)
stem(x,mag2db(fftshift(fft(black))/max(fft(black))));
title('Blackman (Frequency Domain)');
xlabel('Normalized frequency (x pi rad/s)')
ylabel('Amplitude')
grid on;

xn=0:25;
hann = 0.5*(1-cos(2*pi*xn/N));
subplot(2,4,2)
stem(xn,hann);
title('hanning (Time Domain)');
xlabel('Samples')
ylabel('Amplitude')
grid on;
subplot(2,4,6)
stem(xn,mag2db(fftshift(fft(hann))/max(fft(hann))));
title('Hanning (Frequency Domain)');
xlabel('Normalized frequency (x pi rad/s)')
ylabel('Amplitude')
grid on;

hamm = 0.54 - 0.46*cos(2*pi*xn/N);
subplot(2,4,3)
stem(xn,hamm);
title('Hamming (Time Domain)');
xlabel('Samples')
ylabel('Amplitude')
grid on;
subplot(2,4,7)
stem(xn,mag2db(fftshift(fft(hamm))/max(fft(hamm))));
title('Hamming (Frequency Domain)');
xlabel('Normalized frequency (x pi rad/s)')
ylabel('Amplitude')
grid on;

x=-12:12;
a = 1*(x>=-12);
b= 1*(x<=12);
rect = a.*b;

subplot(2,4,4)
stem(x,rect);
title('Reactangle (Time Domain)');
xlabel('Samples')
ylabel('Amplitude')
grid on;
subplot(2,4,8)
stem(x,mag2db(fft(rect)/max(fft(rect))));
title('Rectangle (Frequency Domain)');
xlabel('Normalized frequency (x pi rad/s)')
ylabel('Amplitude')
grid on;





