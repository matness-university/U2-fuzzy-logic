function INTENS = intens(x,y)

    if(size(x) ~= size(y))
        error('Los vectores deben tener las mismas dimensiones');
    end
    
    values = zeros(1,length(y));
    
    for i=1:length(x)
        if(y(i) < 0.5)
            values(i) = 2*y(i);
        else
            values(i) = 1-2*(1-y(i)).^2;
        end
    end
    
    INTENS = values;
end

% x = 0:0.01:1;
% y = x;
% plot(x,y);
% hold on;
% y2 = intens(x,y);
% plot(x,y2);
