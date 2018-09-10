%WAP 4 point DFT using divide and conq and radix 2 method.

clc 
clear all
close all

x=input('Enter the sequence');
n=input('Enter the number of sequence');

x0 = x(1:2:n); 

x1 = x(2:2:n); 

X0 = fft(x0);

X1 = fft(x1); 

y=[X0,X1];

W=[1 1 1 -1j];

o=y.*W;

oe=[o(2),o(4)];
oo=[o(1),o(3)];

OE=fft(oe);
OO=fft(oo);

z=[OE OO]
z1= fft(x)
stem(z);



