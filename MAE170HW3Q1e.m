% Aubree Coelho
% 92904475
% July 17, 2021
% MAE170 HW3 Q1d

clc; clear;


% unit step response T2(s)

top = 17;
bot = [1 2 17];
sys = tf(top,bot);
poles = pole(sys);
pzplot(sys);
figure(2);
step(sys);