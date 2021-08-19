% Aubree Coelho
% 92904475
% July 24, 2021
% MAE170 HW4 Q1b

clc; clear;


% values of system poles

s = tf('s');
T = 1*s^6 + 2*s^5 + 14*s^4 + 8*s^3 + 44*s^2 + 8*s + 40;
roots = zero(T);
disp(roots);
pzplot(T);

% function is unstable
% part a proved that the function is either marginally stable or unstable