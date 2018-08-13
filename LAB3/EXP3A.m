clc;
clear all;
subplot(3,2,1)
n=-10:10;
w=(n>=0)-(n>=4)
stem(n,w);

subplot(3,2,2)
x=n.*(n>=0)-2*(n-4).*(n>=4)+(n-8).*(n>=8)
stem(n,x);

subplot(3,2,3)
y=(n==0)-4*(n==4)
stem(n,y);

subplot(3,2,4)
n=-20:20;
z=((0.9).^n).*((n>=0)-(n>=20))
stem(n,z);

subplot(3,2,5)
n=-10:10;
m1=w.*w;
stem(n,m1)

subplot(3,2,6)
m2=w.*w.*x;
stem(n,m2)


% convolution
clc
clear all
n=-10:10;
w=(n>=0)-(n>=4)
t=-20:20;
s=conv(w,w)
stem(t,s)


