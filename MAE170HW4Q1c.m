% Aubree Coelho
% 92904475
% July 24, 2021
% MAE170 HW4 Q1c

clc; clear;


% system response to unitary step input

sys = tf(1,[1 2 14 8 44 8 40]);
step(sys);

% unbounded response


s = tf('s');
T = (2*s+8)/((5*s^2+3*s-10));
roots = zero(T);
disp(roots);
pzplot(T);
