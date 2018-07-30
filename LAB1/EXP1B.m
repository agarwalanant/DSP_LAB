clc
clear
clear all
% WAP for Discrete Time Signal x(n) = exp((1j*pi.*n)/6). Determine and plot
% imaginart, real, abs and angle in degree and readians
n = 0:30;
x= exp((1j*pi.*n)/6);
r = real(x);

subplot(2,3,1)
stem(n,r);
title('Real')

im = imag(x);
subplot(2,3,2)
stem(n,im);
title('Imaginary')

ab = abs(x);
subplot(2,3,3)
stem(n,ab);
title('Abs')

ang = angle(x);
subplot(2,3,4)
stem(n,ang);
title('angle radian')

angdeg = ang.*180./pi;
subplot(2,3,5)
stem(n,angdeg);
title('angle degree')

