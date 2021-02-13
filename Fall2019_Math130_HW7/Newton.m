% Name:Tommy Lee Truong
% Last Edit:Oct 10 2019
% Program Name: Homework 7
function [root,iter,xn]=Newton(x0,f,fp,tol)
max = 100;
x = x0;
fx = f(x0);
iter = 1;
xn = [];
while ( abs(fx) > tol) && (iter < max)
    fx = f(x);
    fxp = fp(x);
    xn = [xn x];
    x = x - fx/fxp;
    iter = iter+1;
end
root = x;
end
