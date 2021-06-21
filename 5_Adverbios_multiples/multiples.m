function [x0, mu0, muadv] = multiples(x0, mu0, varargin)

    ADVERBS = ['no', 'muy', 'con', 'cerca', 'dilac', 'aproximadamente'];
    
    if(max(mu0) > 1)
        error('mu0 no puede contener valores mayores a 1');
    end
    
    if(length(x0) ~= length(mu0))
        error('Los vectores deben tener las mismas dimensiones');
    end
    
    if(length(varargin) > 3)
        error('Sólo se pueden recibir hasta 3 adverbios');
    end
    
    for i=1:length(varargin)
        if(~all(ismember(varargin{i},ADVERBS)==1))
            error('Sólo se pueden usar uno de estos adverbios no, muy, algo, cerca, aproximadamente')
        end
    end
    
    AUX = mu0;
    
    plot(x0,mu0);
    hold on;
    
    for i=1:length(varargin)
        switch varargin{i}
            case 'no'
                AUX = no(AUX);
                plot(x0,AUX, 'Color', 'm','LineStyle', '-', 'LineWidth', 2);
            case 'muy'
                AUX = muy(AUX);
                plot(x0,AUX, 'Color', 'c','LineStyle', '--', 'LineWidth', 2);
            case 'con'
                AUX = con(AUX);
                plot(x0,AUX, 'Color', 'r','LineStyle', ':', 'LineWidth', 2);
            case 'cerca'
                AUX = cerca(AUX);
                plot(x0,AUX, 'Color', 'g','LineStyle', '-.', 'LineWidth', 2);
            case 'dilac'
                AUX = dilac(AUX);
                plot(x0,AUX, 'Color', 'b','LineStyle', '-', 'LineWidth', 2);
            case 'aproximadamente'
                AUX = dilac(AUX);
                plot(x0,AUX, 'Color', 'k','LineStyle', '--', 'LineWidth', 2);
        end
    end
    
    muadv = AUX;
    
end

% x = 0:0.01:1;
% y = x.^2
% [x0,mu0,muadv] = multiples(x, y, 'no', 'cerca', 'dilac')