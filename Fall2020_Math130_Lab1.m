% Name:Tommy Lee Truong
% Last Edit:Aug 28 2020
% Program Name: Lab 1
%1)
    A = [1 2; 3 4];
    B = [5 6; 7 8];
    b = [44; 33];
%1a) Compute C= A*B
    C=A*B;
%1b) Compute C= A.*B
    C=A.*B;
%1c) What is the difference between the operations '*' and '.*'?
    %'*' denotes cross/vector multiplication 
    %and '.*' denotes dot/scalar multiplication
%1d) Compute A_transposed
    C = A.';
%1e) compute A*b
    C=A*b;
%1f) compute A_inverse * b
    C=inv(A)*b;
%1g) Modify A such that A_2,1 = 1000
    A(2,1)=1000;
%2)create function handle via f=@(x)x$ outputes f(x)=x
%2a)create function handle f(x)=x^2 -3
    f= @(x) (x.^2)-3;
%2b) plot f over domain [-3,3]; what determines its smoothness?
    x =[-3:2/3:3];
    %the increment value in 'x' determines smoothness; the smaller the
    %value the smoother the graph. in this example the value is 2/3
    y =f(x);
    plot(x,y);
%3) create a table for the out puts of the function f(x)=x^2 -3
    x= x';
    y=f(x);
    C=table(x,y);
%4) use publish function
    
