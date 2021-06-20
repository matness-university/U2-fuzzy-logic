function APROXIMADAMENTE = aproximadamente(x,y)
    APROXIMADAMENTE = dilac(x, dilac(x,y));
end

% x = 0:0.01:1;
% y = x;
% y2 = aproximadamente(x,y);
% plot(x,y);
% hold on;
% chart = plot(x,y2);
% y3 = dilac(x,y);
% plot(x,y3);