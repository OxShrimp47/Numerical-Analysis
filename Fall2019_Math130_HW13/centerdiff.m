% Name:Tommy Lee Truong
% Last Edit:Nov 28 2019
% Program Name: Homework 13
function fx = centerdiff (f,m, x, h)
s1=x-h;
s2=x+h;
fx=f(s2)-f(s1);
s1=2.*h;
fx=fx/s1;
s1=h.*h;
s1=s1/3;
s1=s1.*m;
fx=fx-s1;
