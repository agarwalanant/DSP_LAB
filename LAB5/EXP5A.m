%  WAP for the sequence x[n] = { 1,1,1,2,1,1 } amd h[n] = { 1,1,2,1}
%      a.) compute circular convolution without direct command
%      b.) compute linear convolution using circular convolution ( as
%          computed in part (a) )
%      c.) compute circular convolution using linear convolution and verify
%          result with part (a)
%      d.) compute circular convolution using DFT and IDFT method


clc;
clear all;
close all;

x=input('enter elements in x[n] : ');
h=input('enter elements in h[n] : ');
n1=length(x);
n2=length(h);
N=max(n1,n2);

n3=n1-n2;
if(n3>0)
    h=[h,zeros(1,n3)];
else
    x=[x,zeros(1,-n3)];
end

for n=1:N
    x(n)=0;
for i=1:N
        j=n-i+1;
        if(j<=0)
            j=N+j;
        end
        x(n)=[x(n)+(x(i)*h(j))];
end
end
 
n=1:6;
subplot(2,2,1)
stem(n,x(n),'k')
title('Circular Convolution')
ylabel('amplitude')
xlabel('time')

h=[h,zeros(1,n1+n2-N-1)];
x=[x,zeros(1,n1+n2-N-1)];
N=n1+n2-1;
 
for n=1:N
    x3(n)=0;
    for i=1:N
        j=n-i+1;
        if(j<=0)
            j=N+j;
        end
        x3(n)=[x3(n)+(x(i)*h(j))];
   end        
  end
 
n=1:9;      
subplot(2,2,2)
stem(n,x3(n),'k')
title('Linear Convolution using Circular Convolution')
ylabel('amplitude')
xlabel('time')        
        
for i=1:(N-max(n1,n2))
    x3(i)=x3(i)+x3(i+max(n1,n2));
end
 
for i=1:max(n1,n2)
    x4(i)=x3(i);
end
 
n=1:6; 
subplot(2,2,3) 
stem(n,x4(n))
title('Circular Convolution using Linear Convolution')
ylabel('amplitude')
xlabel('time')
 
x5=zeros(1,n1)
 
for k=1:n1
    for n=1:n1
        x5(k)=x5(k)+[x(n)*exp((-i)*2*pi*(k-1)*(n-1)/n1)];
    end
end