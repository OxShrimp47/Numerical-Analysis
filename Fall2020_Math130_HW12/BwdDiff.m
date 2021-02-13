% Name:Tommy Lee Truong
% Last Edit:Dec 8 2020
% Program Name: Homework 12
%% 4a) backward difference
function fx = BwdDiff (f,x,h)
x2 = x-h;
fx=f(x)-f(x2);
fx=fx/h;