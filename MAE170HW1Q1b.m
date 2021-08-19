% Aubree Coelho
% 92904475
% June 31, 2021
% MAE170 HW1 Q1b

clc; clear;


% partial fraction expansion
b = [0 9];
a = [1 10 9];
[r,p,k] = residue(b,a);
R1 = (r(1,1));
R2 = (r(2,1));
P1 = p(1,1);
P2 = p(2,1);
formatSpec = 'partial fraction expansion = %d/(s-(%d)) + %d/(s-(%d))';
pfe = sprintf(formatSpec,R1,P1,R2,P2);
disp(pfe);


% inverse laplace transform
syms s;
Fi = 9/(s^2+10*s+9);
Ff = ilaplace(Fi);
ilt = 'inverse laplace transform = ' + string(Ff);
disp(ilt);


% output versus time plot
t = 0:0.01:10;
func = matlabFunction(Ff);
plot(t,func(t));
title('Output versus Time');
xlabel('Time');
ylabel('Displacement');

