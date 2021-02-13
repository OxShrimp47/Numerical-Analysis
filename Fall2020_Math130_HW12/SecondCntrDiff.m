% Name:Tommy Lee Truong
% Last Edit:Dec 8 2020
% Program Name: Homework 12
%% 4a) 2nd derivative center difference
function fx = SecondCntrDiff (f,x,h)
x1=x+h;
x2=x-h;
fx=f(x1)-2.*f(x)+f(x2);
fx=fx/(h.^2);