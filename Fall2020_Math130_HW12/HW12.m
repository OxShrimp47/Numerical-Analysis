% Name:Tommy Lee Truong
% Last Edit:Dec 8 2020
% Program Name: Homework 12
%% 4b)
clc; clear all; close all;
f= @(x) sin(x);
df= @(x) cos(x);
df2= @(x) -sin(x);
h=[1;0.5;0.25;0.125;0.0625];
truedf=[df(1.2);df(1.2);df(1.2);df(1.2);df(1.2)];
%% 4b)forward difference
approxdf=[FwdDiff(f,1.2,h)];
approxdf=approxdf(:,1);
e=[(truedf-approxdf)];
e=e(:,1);
eh=[(e(1,1)/e(2,1));(e(2,1)/e(3,1));(e(3,1)/e(4,1));(e(4,1)/e(5,1));e(5,1)];
T=table(h,truedf,approxdf,e,eh)
%% 4b)Backward difference
approxdf=[BwdDiff(f,1.2,h)];
approxdf=approxdf(:,1);
e=[(truedf-approxdf)];
e=e(:,1);
eh=[(e(1,1)/e(2,1));(e(2,1)/e(3,1));(e(3,1)/e(4,1));(e(4,1)/e(5,1));e(5,1)];
T=table(h,truedf,approxdf,e,eh)
%% 4b)Centered difference
approxdf=[CntrDiff(f,1.2,h)];
approxdf=approxdf(:,1);
e=[(truedf-approxdf)];
e=e(:,1);
eh=[(e(1,1)/e(2,1));(e(2,1)/e(3,1));(e(3,1)/e(4,1));(e(4,1)/e(5,1));e(5,1)];
T=table(h,truedf,approxdf,e,eh)
%% 4c)
x = h/10;
y1 = e;
y2 = approxdf;
loglog(x,y1,x,y2)
title('centered difference truncation error')
xlabel('h')
%% 4b)2nd derivative centered difference
truedf=[df2(1.2);df2(1.2);df2(1.2);df2(1.2);df2(1.2)];
approxdf=[SecondCntrDiff(f,1.2,h)];
approxdf=approxdf(:,1);
e=[(truedf-approxdf)];
e=e(:,1);
eh=[(e(1,1)/e(2,1));(e(2,1)/e(3,1));(e(3,1)/e(4,1));(e(4,1)/e(5,1));e(5,1)];
T=table(h,truedf,approxdf,e,eh)
