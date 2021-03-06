clc
clear 
close all

% WAP to generate unit impulse unit step ramp and signum function using inbuit function zeros and ones.

x= -10:10;
imp = [zeros(1,10) , ones(1), zeros(1,10)];

step = [zeros(1,10) , ones(1,11)];

sgn = [-1*ones(1,10) , zeros(1), ones(1,10)];

ramp = x.*[zeros(1,10) , ones(1,11)];

subplot(2,2,1)
stem(x,imp)
title('Impulse')
xlabel('n')
ylabel('y')

subplot(2,2,2)
stem(x,step);
title('Step')
xlabel('n')
ylabel('y')

subplot(2,2,3)
stem(x,sgn);
title('Signum')
xlabel('n')
ylabel('y')

subplot(2,2,4)
stem(x,ramp);
title('Ramp')
xlabel('n')
ylabel('y')



