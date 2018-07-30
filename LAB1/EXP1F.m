n= -10:10;
x = 1.*(n ==0);
y = 1.*(n == 6);

subplot(2,1,1)
stem(n,x);
title('Imp[n]')

subplot(2,1,2)
stem(n,y)
title('Imp[n-6]')