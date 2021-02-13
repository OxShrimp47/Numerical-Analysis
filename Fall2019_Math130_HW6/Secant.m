% Name:Tommy Lee Truong
% Last Edit:Oct 10 2019
% Program Name: Homework 6
function [root,iter,xn]=Secant(x0,f,x1,tol)
max = 100;
x = x0;
y = x1;
fx = f(x0);
fy = f(x1);
iter = 1;
xn = [];
while (abs(fy) > tol) && (iter < max)
    fx = f(x);
    fy = f(y);
    xn = [xn x];
    xn = y - fy.*((y-x)/(fy-fx));
    x = y;
    y = xn;
    iter = iter+1;
end
root = y;
end
