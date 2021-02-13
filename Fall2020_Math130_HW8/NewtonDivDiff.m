% Name:Tommy Lee Truong
% Last Edit:Oct 27 2019
% Program Name: Homework 8
function divdiff_y = NewtonDivDiff(x_nodes,y_values)

n = length(x_nodes)-1.0;
F = @ (y1,y2,x1,x2) (y2-y1)/(x2-x1);
temp1 = 1:(n+1);
    for i=1:n
        y1=double(y_values(i));
        y2=double(y_values(i+1));
        x1=double(x_nodes(i));
        x2=double(x_nodes(i+1));
        temp1(i)= F(y1,y2,x1,x2);
    end
temp1(n+1)=0.0;
diff = [x_nodes; y_values; temp1];
temp2 = temp1;
temp3 = 2;
temp4 = n-1;
for j=2:n
    for i=1:temp4
        y1=double(temp2(i));
        y2=double(temp2(i+1));
        x1=double(x_nodes(i));
        x2=double(x_nodes(i+temp3));
        temp1(i)= F(y1,y2,x1,x2);
    end
    for i=temp4:(n+1)
       temp1(i)= 0.0;
    end
    diff = [diff; temp1];
    temp2 = temp1;
    temp3 =  temp3 +1;
    temp4 = temp4-1;
end
divdiff_y = diff.';

end