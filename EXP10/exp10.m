%WAP to design a butterworth filter high filter using following specs:
%Passband attenuation : 0.2db
%StopBand Attenuation : 40db
%PassBand Frequency : 2KHz
%Stop Band Frequency : 3.5KHz
%Sampling frequency: 8Khz
pba = 0.2;
sba = 40;
sbf = 3.5;
pbf = 2;
sf = 8;
Wp = 2*pbf/sf;
Ws = 2*sbf/sf;
[n,Wn] = buttord(Wp,Ws,pba,sba);
[b,a] = butter(n,Wn,'high');
w = 0:0.1:pi;
h = freqz(b,a,w);
h1 = 20*log(abs(h));
p = angle(h);
subplot(4,1,1);
plot(w/pi,h1);
title('Analog Magnitude Plot');
subplot(4,1,2);
plot(w/pi,p);
title('Analog Phase Plot')

%Convert design analog filter into digital filter using impulse invariant
%transformation.
pba = 0.2;
sba = 40;
sbf = 3.5;
pbf = 2;
sf = 8;
Wp = 2*pbf/sf;
Ws = 2*sbf/sf;
[n,Wn] = buttord(Wp,Ws,pba,sba);
[b,a] = butter(n,Wn,'high');
w = 0:0.1:pi;
[bz,az] = impinvar(b,a,sf);
y = freqz(bz,az,w);
yabs = 20*log(abs(y));
pdig = angle(y);
subplot(4,1,3);
plot(w/pi,yabs);
title('Digital Magnitude Plot');
subplot(4,1,4)
plot(w/pi,pdig);
title('Digital Phase Plot');
