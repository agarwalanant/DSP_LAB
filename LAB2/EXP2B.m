% WAP to gen a sq wave 50hz sampling freq 1000Hz duty cycle:25 50 75  [continuous and discrete]
clc
clear all
close all
x= [0:0.001:0.1].*2*pi*50;

sq25 = square(x,25);
sq50 = square(x,50);
sq75 = square(x,75);

subplot(2,3,1)
plot(x,sq25)
title('duty = 25%');

subplot(2,3,2)
plot(x,sq50);
title('duty = 50%');

subplot(2,3,3)
plot(x,sq75)
title('duty = 75%');

subplot(2,3,4)
stem(x,sq25)
title('duty = 25%');

subplot(2,3,5)
stem(x,sq50)
title('duty = 50%');

subplot(2,3,6)
stem(x,sq75)
title('duty = 75%');