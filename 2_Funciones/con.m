function CON = con(x,y)
    if(size(x) ~= size(y))
        error('Los vectores deben tener las mismas dimensiones');
    end
    
    CON = y.^2
end

% x = 0:0.01:1;
% y = x;
% y2 = con(x,y);
% plot(x,y);
% hold on;
% chart = plot(x,y2);