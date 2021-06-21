function BASE = base(x)
    AUX = zeros(1,length(x));
    
    for i=1:length(x)
        if(x(i) <= 25)
            AUX(i) = (x(i)-10)/15;
        else
            AUX(i) = (50-x(i))/25;
        end
    end
    
    BASE = AUX;
end