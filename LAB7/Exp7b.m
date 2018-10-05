clc 
clear all
close all
N1=1024;
n1=-N1/2:1:N1/2;
c=1
for i=n1
    Wr(c)=1;
    c=c+1;
end
Wr

n=0:1:N1-1
c=1;
for i=n
    Wc(c)=0.5-0.5*(cos(2*pi*i/(N1-1)));
    Wh(c)=0.54-0.46*(cos(2*pi*i/(N1-1)));
    Wb(c)=0.42-0.5*(cos(2*pi*i/(N1-1)))+0.08*cos(4*pi*i/(N1-1));
    c=c+1;
end
Wc
Wh
Wb

subplot(4,2,1)
plot(n1,Wr,'k')
title('Rectangular Window')
xlabel('n')
ylabel('Wr(n)')
grid on


subplot(4,2,2)
plot(n,Wc,'k')
title('Hanning Window')
xlabel('n')
ylabel('Wc(n)')
grid on


subplot(4,2,3)
plot(n,Wh,'k')
title('Hamming Window')
xlabel('n')
ylabel('Wh(n)')
grid on


subplot(4,2,4)
plot(n,Wb,'k')
title('Blackman Window')
xlabel('n')
ylabel('Wb(n)')
grid on

%Plotting the normalised frequency
%first find fft of eack Wx

Wrr=fft(Wr)
Wcc=fft(Wc)
Whh=fft(Wh)
Wbb=fft(Wb)
%Find the max(Wx)



 Norm_Wr=20*log(abs((Wrr)/max(Wrr)))
 Norm_Wc=20*log(abs((Wcc)/max(Wcc)))  
 Norm_Wh=20*log(abs((Whh)/max(Whh)))
 Norm_Wb=20*log(abs((Wbb)/max(Wbb)))
 
 subplot(4,2,5)
 stem(n1,Norm_Wr)
 title('Normalised Frequency domain Rectangular Window')
xlabel('n')
ylabel('Norm_Wr(n)')
grid on
 
 subplot(4,2,6)
 stem(n,Norm_Wc)
 title('Normalised Frequency Domain Hanning Window')
xlabel('n')
ylabel('Norm_Wc(n)')
grid on

 
 subplot(4,2,7)
 stem(n,Norm_Wh)
 title('Normalised Frequency Domain Hamming Window')
xlabel('n')
ylabel('Norm_Wh(n)')
grid on
 
 subplot(4,2,8)
 stem(n,Norm_Wb)
 title('Normalised Frequency Domain Blackman Window')
xlabel('n')
ylabel('Norm_Wb(n)')
grid on
 