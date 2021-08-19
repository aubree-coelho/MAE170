% Aubree Coelho
% 92904475
% July 24, 2021
% MAE170 HW4 Q2d

clc; clear;


% unit step input

top = [36 0];
bot = [1 7 14 28 16];
sys = tf(top,bot);
step(sys);