% WAP sinusoidal signal with user input multiple freq, amp, phase
% Asin(2pift + phase)
clc
clear all
close all

prompt='Enter freq';
f = input(prompt);
x= -50:(1/f):50;

promt = 'Enter Phase';

phase = input(promt);

promt= 'Enter amp';

amp = input(promt);

s = amp.*sin(x.*2*3.142*f + phase);

plot(x,s)
title('sinosoidal function')

