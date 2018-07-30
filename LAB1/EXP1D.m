n = -10:10;

x = (0.8).^n;
x_ = (0.8).^(-n);

even = (x + x_)/2;

subplot(2,1,1)
stem(n,even)
title('Even')

odd = (x - x_)/2;

subplot(2,1,2)
stem(n,odd)
title('odd')
