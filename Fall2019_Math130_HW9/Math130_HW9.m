% Name:Tommy Lee Truong
% Last Edit:Nov 1 2019
% Program Name: Homework 9
clc; clear all; close all;

% define the true function (note in the hw this is sin(x) or 1/x^2+1
f = @(x) 1/x;

% define the x values (i.e., nodes) and y values
% these values here are from Example 1 / Section 3.3 /  pag 124
x_nodes = [1 2 4];
y_values = [f(1)   f(2)   f(4)];

% compute the divided difference (this should agree with the first row of
% table 3.11 in your textbook)
divdif_y = NewtonDivDiff(x_nodes,y_values)


% check that p_4(1.5) ~= 0.51 as given on page 125
x_eval = [1 2 3 ];
p_eval = interp(x_nodes,divdif_y,x_eval)

% interpolating polynomial
x_eval = linspace(1,2,3);
p_eval = interp(x_nodes,divdif_y,x_eval);

% plot f(z), p_n(z) and absolute error = |f(z) - P_n(z)|
figure('DefaultAxesFontSize', 20);  box on; hold on;
subplot(2,1,1); hold on;
plot(x_eval,f(x_eval),'b-', 'linewidth', 2);
plot(x_eval,p_eval,'rx--', 'linewidth', 2);
xlabel('x_{eval}');
ylabel('f(x_{eval}), p_n(x_{eval})')
legend('f(x)', 'p_n(x)')
xlim([x_nodes(1) x_nodes(end)])

subplot(2,1,2)
plot(x_eval,abs(f(x_eval)-p_eval),'-', 'linewidth', 2);
xlabel('z')
ylabel('|f(z)-p_n(z)|')
title('Absolute Error = |f(z)-p_n(z)|')
xlim([x_nodes(1) x_nodes(end)])
%% 
clc; clear all; close all;

% define the true function
f = @(x) 1-(13/8).*(x-1)+(2/9).*(x-3).^3+1/2-(1/2).*(x-2)+(2/3).*(x-2).^2-(1/9).*(x-2).^3;

% define the x values (i.e., nodes) and y values
% these values here are from Example 1 / Section 3.3 /  pag 124
x_nodes = [1 2 4];
y_values = [f(1)   f(2)   f(4)];

% compute the divided difference (this should agree with the first row of
% table 3.11 in your textbook)
divdif_y = NewtonDivDiff(x_nodes,y_values)


% check that p_4(1.5) ~= 0.51 as given on page 125
x_eval = [1 2 3 ];
p_eval = interp(x_nodes,divdif_y,x_eval)

% interpolating polynomial
x_eval = linspace(1,2,3);
p_eval = interp(x_nodes,divdif_y,x_eval);

% plot f(z), p_n(z) and absolute error = |f(z) - P_n(z)|
figure('DefaultAxesFontSize', 20);  box on; hold on;
subplot(2,1,1); hold on;
plot(x_eval,f(x_eval),'b-', 'linewidth', 2);
plot(x_eval,p_eval,'rx--', 'linewidth', 2);
xlabel('x_{eval}');
ylabel('f(x_{eval}), p_n(x_{eval})')
legend('f(x)', 'p_n(x)')
xlim([x_nodes(1) x_nodes(end)])

subplot(2,1,2)
plot(x_eval,abs(f(x_eval)-p_eval),'-', 'linewidth', 2);
xlabel('z')
ylabel('|f(z)-p_n(z)|')
title('Absolute Error = |f(z)-p_n(z)|')
xlim([x_nodes(1) x_nodes(end)])