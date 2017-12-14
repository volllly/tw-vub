function [ Y ] = dcttoidct( I )
    Y = blockproc(rgb2gray(I), [8 8], @(b) dct2(b.data));
    Y = blockproc(Y, [8 8], @(b) idct2(b.data));
end

