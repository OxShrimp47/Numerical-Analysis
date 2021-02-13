% Name:Tommy Lee Truong
% Last Edit:Sept 8 2020
% Program Name: Homework 2
x=[0,pi/4];
yt=tan(x);
y1=tan(x)+(1+tan(x).^2).*(x-pi/4);
y2=tan(x)+(1+tan(x).^2).*(x-pi/4)+(1+tan(x).^2).*tan(x).*(x-pi/4).^2;
y3=tan(x)+(1+tan(x).^2).*(x-pi/4)+(1+tan(x).^2).*tan(x).*(x-pi/4).^2+(2.*(1+tan(x).^2).*tan(x).^2+(1+tan(x).^2).^2).*(x-pi/4).^3/6;

plot(x,yt);
title('taylor polynomial')
hold on
plot(x,y1);
plot(x,y2);
plot(x,y3);
hold off
r1=yt-y1;
r2=yt-y2;
r3=yt-y3;
%% 

plot(x,r1);
title('remainders')
hold on
plot(x,r2);
plot(x,r3);
hold off
