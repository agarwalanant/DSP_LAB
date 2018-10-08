%PASSTIME 1.5 kHZ TRANS .5 STOP BAND  >20 DB SAMPLING 8KHZ

%Design FIR low pass filter using 

clc ;clear all;close all




w= 2*pi*1.5/8;
N=25;
n=0:24;
a= sin(w*n);
rec=ones(1,25);
rc=rec.*a;
subplot(2,2,1);
stem(n,rc);

hamm= 0.5 -0.5*cos(2*pi*n/(N-1));
hm=hamm.*a;
subplot(2,2,2);
stem(n,hm);


hann= 0.46 -0.54*cos(2*pi*n/(N-1));
hn=hann.*a;
subplot(2,2,3);
stem(n,hn);

black= 0.42 -0.5*cos(2*pi*n/(N-1)) + 0.08*cos(4*pi*n/(N-1));
bk=black.*a;
subplot(2,2,4);
stem(n,bk);




