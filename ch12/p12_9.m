x = [1.5
     1.5];
j = [2*x(1) 2*x(2)
     2*x(1) -1];
f = [x(1)^2+x(2)^2-5
     x(1)^2-x(2)-1];
 
 for a=0:5
disp(x);
x = x-j\f;
 end