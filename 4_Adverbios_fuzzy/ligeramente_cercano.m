x = 10:0.1:50;
y = base(x);

MAS = y.^1.25;
INT = intens(x,MAS);
CON = y.^2;
CERCANO = y.^1.4;
LIGERAMENTE_CERCANO = max(INT,CON);

plot(x,y, 'Color', 'g');
hold on;
plot(x,CERCANO, 'Color', 'b','LineStyle', '--', 'LineWidth', 2);
plot(x,LIGERAMENTE_CERCANO, 'Color', 'r', 'LineStyle', ':');