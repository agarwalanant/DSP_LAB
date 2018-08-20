% WAP to N point DFT of user input sequence without using inbuit function
% and plot it's phase and magnitude spectrum
% compute IDFT of the result obtained in part a

clc 
close all
clear all

prompt = 'Enter the sequence 1 ';
x = input(prompt);

N = length(x);
X = zeros(N,1);
for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1)*exp(-j*2*pi*k*n/N);
    end
end

t = 0:N-1;

subplot(221)
stem(t,x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Time domain - Input sequence')
grid on

subplot(222)
stem(t,abs(X))
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude response')
grid on

subplot(223)
stem(t,angle(X))
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain - Phase response')
grid on       
dft = fft(x);  


N1 = length(X)
X1 = zeros(1,N1);
for k = 0:N1-1
    for n = 0:N1-1
        X1(k+1) = (X1(k+1) + (1/N1)*X(n+1)*exp(1j*2*pi*k*n/N1));
    end
    
end
ifft = ifft(X);

subplot(224)
stem(t,X1);
xlabel('Time (s)');
ylabel('Amplitude');
title('IDFT')

grid on