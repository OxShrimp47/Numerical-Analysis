% Name:Tommy Lee Truong
% Last Edit:Oct 17 2019
% Program Name: Homework 7
function [root,iter,xn]=ModifiedNewton(x0,f,fp,fp2,tol)
max = 100;
x = x0;
fx = f(x0);
iter = 1;
xn = [];
while ( abs(fx) > tol) && (iter < max)
    fx = f(x);
    fxp = fp(x);
    fxp2= fp2(x);
    xn = [xn x];
    x = x - (fx.*fxp)/(fxp.^2-fx.*fxp2);
    iter = iter+1;
end
root = x;
end
