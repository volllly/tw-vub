function [ Y ] = linearequantisierung(I, n)
    Y = uint8(floor(I*double((n-1)/256))*double(256/(n-1)));
end

