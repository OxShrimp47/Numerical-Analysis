% Name:Tommy Lee Truong
% Last Edit:Oct 12 2020
% Program Name: Homework 6
%hw6 1b
function root = Newton(f,d,p,N)
%inputs
%f-function
%d-derivative of f
%p-initial approximation
%N-max iterations
itr=0;
TOL=10.^(-6);
while (itr <N)
    P=p-f(p)/d(p);
    if (abs(P-p) <TOL)
        itr=N;
        %fprintf("success \n");
     else
        itr=itr+1;
        p=P;
    end
    
end
%if (itr ==N)
   % fprintf("fail \n");
%end
root =p;
root
end

