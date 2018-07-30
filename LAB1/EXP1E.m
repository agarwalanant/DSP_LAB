clc
clear clear all
n = -10:10

direct = 1.*(n ==0);
subplot(3,1,1)
stem(n,direct)
title('direct')

rect = 1.*((n >=-5).*(n <=5));
subplot(3,1,2)
stem(n,rect);
title('rect')

sine = sin(n);
subplot(3,1,3)
stem(n,sine)
title('sin')