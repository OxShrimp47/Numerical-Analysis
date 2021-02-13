% Name:Tommy Lee Truong
% Last Edit:Dec 8 2020
% Program Name: Homework 12
%% 4a) center difference
function fx = CntrDiff (f,x,h)
x1=x+h;
x2=x-h;
fx=f(x1)-f(x2);
fx=fx/(2.*h);