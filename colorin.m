function [Y] = colorin(I)
    Y = uint8(zeros(size(I)));
    Y(I = 0,1)  = 20;
    Y(I = 85)  = 20;
    Y(I = 170)  = 20;
    Y(I = 255)  = 20;
end

