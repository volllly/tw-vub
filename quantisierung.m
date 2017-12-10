function [Y] = quantisierung(I)
    Y = uint8(zeros(size(I)));
    Y((I > 30) &  (I <= 60))  = 20;
    Y((I > 60) &  (I <= 128)) = 180;
    Y((I > 128) & (I <= 200)) = 200;
    Y((I > 200) & (I <= 255)) = 255;
end