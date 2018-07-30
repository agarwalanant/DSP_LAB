% represent a discrete time signal and plot using stem fn x(n) = 6n

% 1A
n= -10:10;
x= 6.*n;
stem(n,x);
title('Discrete Time Signal')
xlabel('n')
ylabel('6n')
grid on

