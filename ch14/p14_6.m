xa = [10 20 30 40 50 60 70 80];
ya = [25 70 380 550 610 1220 830 1450];
x = log(xa);
y = log(ya);
x2 = x.^2;
xy = x.*y;
n = length(x);
sx = sum(x);
sy = sum(y);
sx2 = sum(x2);
sxy = sum(xy);

a1 = (n*sxy-sx*sy)/(n*sx2-sx^2)
a0 = mean(y)-a1*mean(x)

xp=linspace(0,max(x),2);
yp=a1*xp+a0;

se = sqrt(sum((y-a0-a1*x).^2)/(n-2))
r2 = (sum((y-mean(y)).^2)-sum((y-a0-a1*x).^2))/sum((y-mean(y)).^2)

plot(x,y,'o',xp,yp);