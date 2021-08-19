% Aubree Coelho
% 92904475
% July 17, 2021
% MAE170 HW3 Q1a

clc; clear;


% poles

top = 4148;
bot = [1 26 309 896 4148];
sys = tf(top,bot);
poles = pole(sys);
disp(poles);