% Name:Tommy Lee Truong
% Last Edit:Nov 28 2019
% Program Name: Homework 13
function fx = secondcenterdiff (f,m, x, h)
s1=x-h;
s2=x+h;
fx=f(s2)-2.*f(x)+f(s1);
s1=h.*h;
fx=fx/s1;
s1=s1/32;
s1=s1.*m;
fx=fx-s1;
