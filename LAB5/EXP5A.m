% LAB->5
% for the sequence x[n]=[1 1 1 2 1 1] and h[n]=[1 1 2 1] 
% 1.Compute Circular Convo without using Direct Method
% 2.Compute Linear Conv using Circular conv
% 3.Compute Circular using Linear Conv
% 4.Compute Circular Conv using DFT and IDFT
close all
clc
clear all

% First Part
 x1=[1,1,1,2,1,1]
x2=[1,1,2,1]
n1=length(x1);

n2=length(x2);

N=max(n1,n2);

n3=n1-n2;
if(n3>0)

    x2=[x2,zeros(1,n3)];
else

    x1=[x1,zeros(1,-n3)];
end
for n=1:N

    x(n)=0;

    for i=1:N

        j=n-i+1;

        if(j<=0)

            j=N+j;end

        x(n)=[x(n)+(x1(i)*x2(j))];

    end

end

n=[1 2 3 4 5 6 ];
subplot(2,2,1)
stem(n,x(n))
title('Circular Convolution')
xlabel('n')
ylabel('y[n]')

% Second Part
x2=[x2,zeros(1,n1+n2-N-1)];
x1=[x1,zeros(1,n1+n2-N-1)];
N=n1+n2-1
for n=1:N

    x3(n)=0;

    for i=1:N

        j=n-i+1;

        if(j<=0)

            j=N+j;end

        x3(n)=[x3(n)+(x1(i)*x2(j))];

    end

end
x3
n=[1 2 3 4 5 6 7 8 9];
subplot(2,2,2)
stem(n,x3(n))
title('Linear Convolution using Circular Convolution')
xlabel('n')
ylabel('y[n]')

% Third Part
for i=1:(N-max(n1,n2))

    x3(i)=x3(i)+x3(i+max(n1,n2));

end
for i=1:max(n1,n2)

x4(i)=x3(i);

end

n=[1 2 3 4 5 6 ];
subplot(2,2,3)
stem(n,x4(n))
title('Circular Convolution using Linear Convolution')
xlabel('n')
ylabel('y[n]')

% Fourth Part
x5=zeros(1,n1)
for k=1:n1
    for n=1:n1
        x5(k)=x5(k)+[x1(n)*exp((-i)*2*pi*(k-1)*(n-1)/n1)];
    end
end

x5

 
