% Name:Tommy Lee Truong
% Last Edit:Nov 22 2020
% Program Name: Homework 4
function root = Bisection_max(a,b,f,max)
%inputs
%a - constant 
%b - constant
%max-maximum number of iterations


%f(root) = 0 return root
tol = 1e-5;

fc = intmax;

sign_fa = sign( f(a)); 
sign_fb = sign( f(b)); 

if (sign_fa * sign_fb == 1) 
    fprintf("No root exists within these bounds  \n");
end
itr  = 0 ;
while (abs(fc) > tol) && (itr < max)
    c = ( a + b ) /2;
    fc = f(c);
    sign_fc = sign(fc);
    if (sign_fa * sign_fc == 1)
         a = c;
    else
         b = c;
    end
    itr = itr +1;
end
root = c;
root

end