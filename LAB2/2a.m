clc
clear 
clear all

% WAP to generate unit impulse unit step ramp and signum function using inbuit function zeros and ones.

x= -10:10;
imp = [zeross(1,3) , ones(1), zeros(1,3)];

stem(x,imp)

