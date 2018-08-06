clc
clear 
clear all

% WAP to generate unit impulse unit step ramp and signum function using inbuit function zeros and ones.

x= -10:10;
imp = [zeros(1,10) , ones(1), zeros(1,10)];

step = [zeros(1,10) , ones(1,11)];

sgn = [-1*ones(1,10) , zeros(1), ones(1,10)];

ramp = x.*[zeros(1,10) , ones(1,11)];

subplot(2,2,1)
stem(x,imp)
title('Impulse')

subplot(2,2,2)
stem(x,step);
title('Step')

subplot(2,2,3)
stem(x,sgn);
title('Signum')

subplot(2,2,4)
stem(x,ramp);
title('Ramp')




