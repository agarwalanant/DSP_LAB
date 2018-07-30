clc
clear
close all

n = -10:10;
step = 1.*(n >=0);
x = (((.5).^n).*step).^2;
energy = sum(x);
% Energy is 1.3333
