% Name:Tommy Lee Truong
% Last Edit:Oct 12 2020
% Program Name: Homework 6
%% 1c Example 3 test
f0= @(x) cos(x) -x;
d0= @(x) -sin(x)-1;
p0=0.5;
p1= pi /4;
n=@(x) Newton(f0,d0,p1,x);
s=@(x) Secant(f0,p0,p1,x);
N={p1;n(2);n(3);n(4);n(5);n(6)};
S={p0;p1;s(3);s(4);s(5);s(6)};
T= table(N,S);
T
%% 1c i test
f1=@(x) cos(x+sqrt(2))+x.*(x/2 +sqrt(2));
d1=@(x) -sin(x+sqrt(2))+x+sqrt(2);
p0=-1.5;
p1=-2;
p2=-1;
n=@(x) Newton(f1,d1,p0,x);
s=@(x) Secant(f1,p1,p2,x);
N={p0;n(2);n(3);n(4);n(5);n(6)};
S={p1;p2;s(3);s(4);s(5);s(6)};
T= table(N,S);
T
%% 1d i plot
x=[1:5];
y=f1(x);
y1=f1(x)-n(x);
y2=f1(x)-s(x);
title('i')

hold on
plot(x,y);
plot(x,y1);
plot(x,y2);
legend({'y=cos(x+sqrt(2))+x.*(x/2 +sqrt(2))','newton','secant'})
hold off
%% 1c ii test
f2=@(x) exp(6.*x)+3.*(log(2)).^2.*exp(2.*x)-log(8).*exp(4.*x)-(log(2)).^3;
d2=@(x) 6.*exp(6.*x)+6.*(log(2)).^2.*exp(2.*x)-4.*log(8).*exp(4.*x);
p0=-0.5;
p1=-1;
p2=0;
n=@(x) Newton(f2,d2,p0,x);
s=@(x) Secant(f2,p1,p2,x);
N={p0;n(2);n(3);n(4);n(5);n(6)};
S={p1;p2;s(3);s(4);s(5);s(6)};
T= table(N,S);
T
%% 1d ii plot
x=[1:5];
y=f2(x);
y1=f2(x)-n(x);
y2=f2(x)-s(x);
title('ii')

hold on
plot(x,y);
plot(x,y1);
plot(x,y2);
legend({'y=exp(6.*x)+3.*(log(2)).^2.*exp(2.*x)-log(8).*exp(4.*x)-(log(2)).^3','newton','secant'})
hold off
