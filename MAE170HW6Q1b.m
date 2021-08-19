% Aubree Coelho
% 92904475
% August 15, 2021
% MAE170 HW6 Q1b

clc; clear;


% root locus plot

figure(1)
G = tf(1,[1 6 8]);
Gc = tf([312 2520.96 199.68],[1 38.073 2.774]);
GcG = G*Gc;
rlocus(GcG);

% step response plot;

figure(2)
x = linspace(1,2,253);
y = step(1/(1+GcG));
plot(x,y);
xlabel('t [sec]'), ylabel('Amplitude'), title('Step Response');
