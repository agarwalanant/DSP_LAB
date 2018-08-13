clc;
clear all;
n=-10:10;
w=(n>=0)-(n>=4);
n1 = length(w);
X1 = [w,zeros(1,n1)];


for i=1:n1+n1-1
C1(i) = 0; 
for j=1:n1 
if(i-j+1>0) 
C1(i) = C1(i) + X1(j) * X1(i-j+1); 
else 
end 
end 
end
C1
N = -20:20;
stem(N,C1);
title('x[n]*x[n]');