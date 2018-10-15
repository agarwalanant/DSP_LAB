clear all;
close all;
fc = 1500;
fw = 500;
sb = 20;
fs = 8000;
wc = 2*pi*fc/fs;

Nr = ceil(0.9*fs/fw); 
if(mod(Nr,2) == 0)
    Nr=Nr+1;
end
Nb = ceil(5.5*fs/fw);
if(mod(Nb,2) == 0)
    Nb=Nb+1;
end
Nm = ceil(3.3*fs/fw);
if(mod(Nm,2) == 0)
    Nm=Nm+1;
end
Nn = ceil(3.1*fs/fw);
if(mod(Nn,2) == 0)
    Nn=Nn+1;
end
    
for n =0:Nr-1
    rec(n+1)=1;
    if(n~=0)
        hd1(n+1)=2*fc*sin(n*wc);
    else
        hd1(n+1)=2*fc;
    end
    h1(n+1)=rec(n+1)*hd1(n+1);
end
 
n1=0:Nr-1;
f1=abs(h1);
d1=fft(f1)
subplot(2,4,1)
plot(n1,f1)
title('Rectangular Window');
xlabel('Time');
ylabel('Amplitude');
subplot(2,4,5)
plot(n1,d1)
title('Rectangular Window');
xlabel('Frequency');
ylabel('Amplitude');
 
for n =0:Nn-1
    han(n+1)= 0.5-0.5*cos(2*pi*n/Nn);
    if(n~=0)
        hd2(n+1)=2*fc*sin(n*wc);
    else
        hd2(n+1)=2*fc;
    end
    h2(n+1)=han(n+1)*hd2(n+1);
end
n2=0:Nn-1;
f2=abs(h2);
d2=fft(f2);
subplot(2,4,2)
plot(n2,f2)
title('Hanning Window');
xlabel('Time');
ylabel('Amplitude');
subplot(2,4,6)
plot(n2,d2)
title('Hanning Window');
xlabel('Frequency');
ylabel('Amplitude');
 
 
for n =0:Nm-1
    ham(n+1)=  0.54 - 0.46*cos(2*pi*n/Nm);
    if(n~=0)
        hd3(n+1)=2*fc*sin(n*wc);
    else
        hd3(n+1)=2*fc;
    end
    h3(n+1)=ham(n+1)*hd3(n+1);
end
 
n3=0:Nm-1;
f3=abs(h3);
d3=fft(f3);
 
subplot(2,4,3)
plot(n3,f3)
title('Hamming Window');
xlabel('Time');
ylabel('Amplitude');
 
subplot(2,4,7)
plot(n3,d3)
title('Hamming Window');
xlabel('Frequency');
ylabel('Amplitude');
 
    
for n =0:Nb-1
    b(n+1)=  0.42 - 0.5*cos(2*pi*n/Nb)+0.08*cos(4*pi*n/(Nb-1));;
    if(n~=0)
        hd4(n+1)=2*fc*sin(n*wc);
    else
        hd4(n+1)=2*fc;
    end
    h4(n+1)=b(n+1)*hd4(n+1);
end
 
n4=0:Nb-1;
f4=abs(h4);
d4=fft(f4);
 
subplot(2,4,4)
plot(n4,f4)
title('Blackman Window');
xlabel('Time');
ylabel('Amplitude');
 
subplot(2,4,8)
plot(n4,d4)
title('Blackman Window');
xlabel('Frequency');
ylabel('Amplitude');

