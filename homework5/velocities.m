x = -pi:0.01:pi;
y1 = 2* abs(sin(x))/x ;
y2 = 2* x/abs(x) * cos(x);

plot(x,y2)