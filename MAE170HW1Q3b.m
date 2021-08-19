% Aubree Coelho
% 92904475
% June 31, 2021
% MAE170 HW1 Q3b

clc; clear;


% Initial Conditions
theta0 = 0.05;
theta_dot0 = -0.045;
X0 = [theta0,theta_dot0]';

% Integration time span
t0 = 0;
tf = 5;
tspan = [t0,tf];

% Integration of ODE
[t,X] = ode45(@ODE_FUNC,tspan,X0);
theta = X(:,1);

% Plotting results
figure(1),hold on
plot(t,theta*180/pi)
xlabel('t [s]')
ylabel('\theta(t) [deg]')

% ODE function
function Xdot = ODE_FUNC(~,X)
    A = [0 1; 1 0];
    Xdot = A*X;
end


