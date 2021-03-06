function DILAC = dilac(x,y)

    if(size(x) ~= size(y))
        error('Los vectores deben tener las mismas dimensiones');
    end
    
    DILAC = y.^0.5;

end

% x = 0:0.01:1;
% y = x;
% plot(x,y);
% hold on;
% y2 = dilac(x,y);
% plot(x,y2);