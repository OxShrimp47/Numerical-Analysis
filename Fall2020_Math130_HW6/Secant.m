% Name:Tommy Lee Truong
% Last Edit:Oct 12 2020
% Program Name: Homework 6
%hw6 1b
function root = Secant(f,p0,p1,N)
%inputs
%f-function
%p0-initial approximation 0
%p1-initial approximation 1
%N-max iterations
TOL=10.^(-6);
itr=1;
q0=f(p0);
q1=f(p1);
while (itr <N)
    P=p1-q1.*(p1-p0)/(q1-q0);
    if (abs(P-p1) < TOL)
        itr=N;
       % fprintf("success \n");
    else
        itr=itr+1;
        p0=p1;
        q0=q1;
        p1=P;
        q1=f(P);
        
    end
    
    
end
if (itr ==N)
  %  fprintf("fail \n");
end
root=p1;
root
end