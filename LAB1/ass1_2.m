clc
clear 
close all

a= [1 2 3; 4 5 4; 3 2 1];

b= a + 2;
c = a*b;
d = a.*b;

a(4,:)=[2 4 6];
a(:,4)=[2 4 6];