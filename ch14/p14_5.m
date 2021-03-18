y = [0 2 4 6 9 11 12 15 17 19];
x = [5 6 7 6 9 8 8 10 12 12];
x2 = x.^2;
xy = x.*y;
n = length(x);
sx = sum(x);
sy = sum(y);
sx2 = sum(x2);
sxy = sum(xy);

a1 = (n*sxy-sx*sy)/(n*sx2-sx^2)
a0 = (sy/n)-a1*(sx/n)

xp=linspace(0,max(x),2);
yp=a1*xp+a0;

se = sqrt(sum((y-a0-a1*x).^2)/(n-2))
r2 = (sum((y-mean(y)).^2)-sum((y-a0-a1*x).^2))/sum((y-mean(y)).^2)

plot(x,y,'o',xp,yp);