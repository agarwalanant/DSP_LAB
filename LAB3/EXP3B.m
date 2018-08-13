
clc
clear all
close all

subplot(3,2,1)
n=-10:10;
w=input('Enter Seq x1');
stem(n,w);
title('X[n]');
n1 = length(w);


subplot(3,2,2)
x=input('Enter seq x2');
stem(n,x);
n2 = length(x);
title('y[n]');

W = [w,zeros(1,n2)];



for i=1:n1+n2-1
C(i) = 0; 
for j=1:n1 
if(i-j+1>0) 
C(i) = C(i) + W(j) * X(i-j+1); 
else 
end 
end 
end
subplot(3,2,3)

N = -20:20;
stem(N,C);
title('x[n]*y[n]');

n3=length(w);