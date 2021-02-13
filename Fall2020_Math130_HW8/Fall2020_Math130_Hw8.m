% Name:Tommy Lee Truong
% Last Edit:Oct 27 2020
% Program Name: Homework 8
%% 2ci
clc; clear all; close all;

% define the true function (note in the hw this is sin(x) or 1/x^2+1
f = @(x) sin(x);

% define the x values (i.e., nodes) and y values
% these values here are from Example 1 / Section 3.3 /  pag 124
x_nodes = [0 2.*pi/5 4.*pi/5 6.*pi/5 8.*pi/5 2.*pi]
y_values = f(x_nodes);

% compute the divided difference (To Validate your code, make sure this function 
% gives the same results as table 3.11 / pag 125 in your textbook. Note that 
% divdif_y should agree with the first row  / coumns 3-7 in this table.)
divdif_y = NewtonDivDiff(x_nodes,y_values)

% check that p_4(1.5) ~= 0.51 as given on page 125
x_eval = 1.5;
format long
p_eval = interp(x_nodes,divdif_y,x_eval)

% interpolating polynomial
x_eval = linspace(1,2.2,20);
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
title('2ci @ n=5')
subplot(2,1,2)
plot(x_eval,abs(f(x_eval)-p_eval),'-', 'linewidth', 2);
xlabel('z')
ylabel('|f(z)-p_n(z)|')
title('Absolute Error = |f(z)-p_n(z)|')
xlim([x_nodes(1) x_nodes(end)])
%%
x_nodes = [0 pi/5 2.*pi/5 3.*pi/5 4.*pi/5 pi 6.*pi/5 7.*pi/5 8.*pi/5 9.*pi/5 2.*pi]
y_values = f(x_nodes);

% compute the divided difference (To Validate your code, make sure this function 
% gives the same results as table 3.11 / pag 125 in your textbook. Note that 
% divdif_y should agree with the first row  / coumns 3-7 in this table.)
divdif_y = NewtonDivDiff(x_nodes,y_values)

% check that p_4(1.5) ~= 0.51 as given on page 125
x_eval = 1.5;
format long
p_eval = interp(x_nodes,divdif_y,x_eval)

% interpolating polynomial
x_eval = linspace(1,2.2,20);
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
title('2ci @ n=10')
subplot(2,1,2)
plot(x_eval,abs(f(x_eval)-p_eval),'-', 'linewidth', 2);
xlabel('z')
ylabel('|f(z)-p_n(z)|')
title('Absolute Error = |f(z)-p_n(z)|')
xlim([x_nodes(1) x_nodes(end)])
%%

x_nodes = [0 pi/10 pi/5 3.*pi/10 2.*pi/5 5.*pi/10 3.*pi/5 7.*pi/10 4.*pi/5 9.*pi/10 pi 11.*pi/10 6.*pi/5 13.*pi/10 7.*pi/5 3.*pi/2 8.*pi/5 17.*pi/10 9.*pi/5 19.*pi/10 2.*pi]
y_values = f(x_nodes);

% compute the divided difference (To Validate your code, make sure this function 
% gives the same results as table 3.11 / pag 125 in your textbook. Note that 
% divdif_y should agree with the first row  / coumns 3-7 in this table.)
divdif_y = NewtonDivDiff(x_nodes,y_values)

% check that p_4(1.5) ~= 0.51 as given on page 125
x_eval = 1.5;
format long
p_eval = interp(x_nodes,divdif_y,x_eval)

% interpolating polynomial
x_eval = linspace(1,2.2,20);
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
title('2ci @ n=20')
subplot(2,1,2)
plot(x_eval,abs(f(x_eval)-p_eval),'-', 'linewidth', 2);
xlabel('z')
ylabel('|f(z)-p_n(z)|')
title('Absolute Error = |f(z)-p_n(z)|')
xlim([x_nodes(1) x_nodes(end)])
%% 2cii
clc; clear all; close all;

% define the true function (note in the hw this is sin(x) or 1/x^2+1
f = @(x) (1\(x.^2+1));

% define the x values (i.e., nodes) and y values
% these values here are from Example 1 / Section 3.3 /  pag 124
x_nodes = [-5 -3 -1 1 3 5]
y_values = f(x_nodes);

% compute the divided difference (To Validate your code, make sure this function 
% gives the same results as table 3.11 / pag 125 in your textbook. Note that 
% divdif_y should agree with the first row  / coumns 3-7 in this table.)
divdif_y = NewtonDivDiff(x_nodes,y_values)

% check that p_4(1.5) ~= 0.51 as given on page 125
x_eval = 1.5;
format long
p_eval = interp(x_nodes,divdif_y,x_eval)

% interpolating polynomial
x_eval = linspace(1,2.2,20);
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
title('2cii @ n=5')
subplot(2,1,2)
plot(x_eval,abs(f(x_eval)-p_eval),'-', 'linewidth', 2);
xlabel('z')
ylabel('|f(z)-p_n(z)|')
title('Absolute Error = |f(z)-p_n(z)|')
xlim([x_nodes(1) x_nodes(end)])

%%


x_nodes = [-5 -4 -3 -2 -1 0 1 2 3 4 5]
y_values = f(x_nodes);

% compute the divided difference (To Validate your code, make sure this function 
% gives the same results as table 3.11 / pag 125 in your textbook. Note that 
% divdif_y should agree with the first row  / coumns 3-7 in this table.)
divdif_y = NewtonDivDiff(x_nodes,y_values)

% check that p_4(1.5) ~= 0.51 as given on page 125
x_eval = 1.5;
format long
p_eval = interp(x_nodes,divdif_y,x_eval)

% interpolating polynomial
x_eval = linspace(1,2.2,20);
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
title('2cii @ n=10')
subplot(2,1,2)
plot(x_eval,abs(f(x_eval)-p_eval),'-', 'linewidth', 2);
xlabel('z')
ylabel('|f(z)-p_n(z)|')
title('Absolute Error = |f(z)-p_n(z)|')
xlim([x_nodes(1) x_nodes(end)])

%%


x_nodes = [-5 -4.5 -4 -3.5 -3 -2.5 -2 -1.5 -1 -0.5 0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5]
y_values = f(x_nodes);

% compute the divided difference (To Validate your code, make sure this function 
% gives the same results as table 3.11 / pag 125 in your textbook. Note that 
% divdif_y should agree with the first row  / coumns 3-7 in this table.)
divdif_y = NewtonDivDiff(x_nodes,y_values)

% check that p_4(1.5) ~= 0.51 as given on page 125
x_eval = 1.5;
format long
p_eval = interp(x_nodes,divdif_y,x_eval)

% interpolating polynomial
x_eval = linspace(1,2.2,20);
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
title('2cii @ n=20')
subplot(2,1,2)
plot(x_eval,abs(f(x_eval)-p_eval),'-', 'linewidth', 2);
xlabel('z')
ylabel('|f(z)-p_n(z)|')
title('Absolute Error = |f(z)-p_n(z)|')
xlim([x_nodes(1) x_nodes(end)])