x = -5:0.1:5;
y = trapmf(x, [-3 0 1 4]);
plot(x,y);
y2 = pimf(x, [-3 0 1 4]);
plot(x,y2);
mse(y,y2)