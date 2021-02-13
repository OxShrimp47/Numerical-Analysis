% Name:Tommy Lee Truong
% Last Edit:Oct 27 2019
% Program Name: Homework 8
%HW8 2b
function p_eval = interp(x_nodes,divdif_y,x_eval)
Ln = length(x_nodes);
Le = length(x_eval);
temp3 = divdif_y.';
temp1 =x_eval(1)-x_nodes(1);
temp2 = temp1;

for i =2:Ln
    temp1= temp1 .* (x_eval(1)-x_nodes(i));
    temp2=[temp2;temp1];
end
temp1 = temp3(2);
for i =1:(Ln-1)
    temp1 = temp1 + temp2(i).*temp3(i+2);
end
p_eval=[temp1];
for j=2:Le
temp1 =x_eval(j)-x_nodes(1);
temp2 = temp1;

for i =2:Ln
    temp1= temp1 .* (x_eval(j)-x_nodes(i));
    temp2=[temp2;temp1];
end
temp1 = temp3(2);
for i =1:(Ln-1)
    temp1 = temp1 + temp2(i).*temp3(i+2);
end
p_eval=[p_eval temp1];
end
end