% Name:Tommy Lee Truong
% Last Edit:Nov 28 2019
% Program Name: Homework 13
function fx = backwarddiff (f,m, x, h)
s=x-h;
fx=f(x)-f(s);
fx=fx/h;
s=h/2;
s=s.*m;
fx=fx-s;
