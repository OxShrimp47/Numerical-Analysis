% Name:Tommy Lee Truong
% Last Edit:Nov 22 2020
% Program Name: Homework 4
%% 2b
f2= @(x) x.^3;
root_ii= Bisection_5deci(-3,1,f2);
root_ii
f3= @(x) sin(x);
root_iii= Bisection_5deci(-pi/2,3.*pi/4,f3);
root_iii
f5= @(x) -x+3;
root_v= Bisection_5deci(2,5,f5);
root_v
%% 2c
itr={1;5;10;15;20};
f= @ (x) Bisection_max(2,5,f5,x);
F={f(1);f(5);f(10);f(15);f(20)};
error = @(x) abs((f(x)-3)/3);
E={error(1);error(5);error(10);error(15);error(20)};
T=table(itr,F,E);
T
%% 5.2a
g1= @ (x) (3+x-2.*x.^2).^(1/4);
g2= @ (x) ((x+3-x.^4)/2).^(1/2);
g3= @ (x) ((x+3)/(x.^2+2)).^(1/2);
g4= @ (x) (3.*x.^4 +2.*x.^2+3)/(4.*x.^3+4.*x-1)
itr={0;1;2;3};
G1={g1(0);g1(1);g1(2);g1(3)};
G2={g2(0);g2(1);g2(2);g2(3)};
G3={g3(0);g3(1);g3(2);g3(3)};
G4={g4(0);g4(1);g4(2);g4(3)};
T=table(itr,G1,G2,G3,G4);
T