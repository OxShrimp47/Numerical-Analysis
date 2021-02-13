% Name:Tommy Lee Truong
% Last Edit:Nov 28 2019
% Program Name: Homework 13
f=@(x) sin(x);
f1=@(x) cos(x);
f2=@(x) -sin(x);
m=f2(pi/2);
%m is the maximum value of the second derivative
m2=f(pi/2);
%m2 is the maximum value of the 4th derivative
x=1.2;
truediff={f1(x);f1(x);f1(x);f2(x)};
%truediff hold the actual exact values of the derivatives
h=[1;-1;-3;-5];
% for the following notations: approx hold the approximated derivative;
% eror holds the absolute errors; ratio holds the difference between
% absoulte errors between hs; each of these are titled with a suffix:
% fd(forwarddifference),bd(backwarddifference),
% cd(centerdifference),sd(secondcenterdifference)
approxfd={forwarddiff(f,m,x,1);forwarddiff(f,m,x,-1);forwarddiff(f,m,x,-3);forwarddiff(f,m,x,-5)};
erorfd={AbsErr(forwarddiff(f,m,x,1),f1(x));AbsErr(forwarddiff(f,m,x,-1),f1(x));AbsErr(forwarddiff(f,m,x,-3),f1(x));AbsErr(forwarddiff(f,m,x,-5),f1(x))};
ratiofd=[0;forwarddiff(f,m,x,1)/forwarddiff(f,m,x,-1);forwarddiff(f,m,x,-1)/forwarddiff(f,m,x,-3);forwarddiff(f,m,x,-3)/forwarddiff(f,m,x,-5)];
approxbd={backwarddiff(f,m,x,1);backwarddiff(f,m,x,-1);backwarddiff(f,m,x,-3);backwarddiff(f,m,x,-5)};
erorbd={AbsErr(backwarddiff(f,m,x,1),f1(x));AbsErr(backwarddiff(f,m,x,-1),f1(x));AbsErr(backwarddiff(f,m,x,-3),f1(x));AbsErr(backwarddiff(f,m,x,-5),f1(x))};
ratiobd=[0;backwarddiff(f,m,x,1)/backwarddiff(f,m,x,-1);backwarddiff(f,m,x,-1)/backwarddiff(f,m,x,-3);backwarddiff(f,m,x,-3)/backwarddiff(f,m,x,-5)];
approxcd={centerdiff(f,m,x,1);centerdiff(f,m,x,-1);centerdiff(f,m,x,-3);centerdiff(f,m,x,-5)};
erorcd={AbsErr(centerdiff(f,m,x,1),f1(x));AbsErr(centerdiff(f,m,x,-1),f1(x));AbsErr(centerdiff(f,m,x,-3),f1(x));AbsErr(centerdiff(f,m,x,-5),f1(x))};
ratiocd=[0;centerdiff(f,m,x,1)/centerdiff(f,m,x,-1);centerdiff(f,m,x,-1)/centerdiff(f,m,x,-3);centerdiff(f,m,x,-3)/centerdiff(f,m,x,-5)];
approxsd={secondcenterdiff(f,m,x,1);secondcenterdiff(f,m,x,-1);secondcenterdiff(f,m,x,-3);secondcenterdiff(f,m,x,-5)};
erorsd={AbsErr(secondcenterdiff(f,m,x,1),f2(x));AbsErr(secondcenterdiff(f,m,x,-1),f2(x));AbsErr(secondcenterdiff(f,m,x,-3),f2(x));AbsErr(secondcenterdiff(f,m,x,-5),f2(x))};
ratiosd=[0;secondcenterdiff(f,m,x,1)/secondcenterdiff(f,m,x,-1);secondcenterdiff(f,m,x,-1)/secondcenterdiff(f,m,x,-3);secondcenterdiff(f,m,x,-3)/secondcenterdiff(f,m,x,-5)];



T=table(truediff,h,approxfd,erorfd,ratiofd,approxbd,erorbd,ratiobd,approxcd,erorcd,ratiocd,approxsd,erorsd,ratiosd)
h=[1;9;19;29;39;49];
y = AbsErr(centerdiff(f,m,x,h),f1(x));
loglog(h,y,'-s')