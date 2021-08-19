% Aubree Coelho
% 92904475
% August 15, 2021
% MAE170 HW6 Q1a

clc; clear;


% root locus plot

figure(1)
G = tf([312 2496],[1 44 236 304]);
rlocus(G);

% step response plot;

figure(2)
x = linspace(1,2,253);
y = step(G/(1+G));
plot(x,y);
xlabel('t [sec]'), ylabel('Amplitude'), title('Step Response');
