x = [2 4 6 7 10 11 14 17 20];
y = [4 5 6 5 8 8 6 9 12];
n = length(x);
sx2 = sum(x.^2);
sxy = sum(x.*y);
a = sxy/sx2;
xp = linspace(0,max(x),2)
yp = a*xp
plot(x,y,'o',xp,yp);
