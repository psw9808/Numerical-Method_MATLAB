function p3_7(x, y)
r = sqrt(x .^ 2 + y .^ 2);
n = length(x);
for i=1:n
    if (x(i) > 0)
        th(i) = atan(y(i)/x(i));
    elseif (x(i) < 0)
        if (y(i) > 0)
            th(i) = atan(y(i) / x(i)) + pi;
        elseif (y(i) < 0)
            th(i) = atan(y(i) / x(i)) - pi;
        else
            th(i) = pi;
        end
    else
        if (y(i) > 0)
            th(i) = pi / 2;
        elseif (y(i) < 0)
            th(i) = -pi / 2;
        else
            th(i) = 0;
        end
    end
    th(i) = th(i) * 180 / pi; 
end
for i=1:n
    fprintf("x : %f , y : %f , r : %f , theta : %f\n",x(i),y(i),r(i),th(i));
end