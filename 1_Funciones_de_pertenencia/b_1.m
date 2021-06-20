x=0:0.1:10;
y=heaviside(x-4);
plot(x,y);
hold on
y2 = smf(x,[3 5]);
plot(x,y2);
mse(y,y2)
