function [ Y ] = todct( I , d)
    Y = blockproc(rgb2gray(I), d, @(b) dct2(b.data));
end

