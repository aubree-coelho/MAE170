% Aubree Coelho
% 92904475
% August 15, 2021
% MAE170 HW6 Q1d

clc; clear;


% root locus plot

figure(1)
G = tf(1,[1 6 8]);
Gc = tf([8.5 110.5 50],1);
GcG = G*Gc;
rlocus(GcG);

% step response plot;

figure(2)
x = linspace(1,2,1507);
y = step(GcG/(1+GcG));
plot(x,y);
xlabel('t [sec]'), ylabel('Amplitude'), title('Step Response');