% Name:Tommy Lee Truong
% Last Edit:Dec 8 2020
% Program Name: Homework 12
%% 4a) Forward difference
function fx = FwdDiff (f,x,h)
x1 =x+h;
fx=f(x1)-f(x);
fx=fx/h;