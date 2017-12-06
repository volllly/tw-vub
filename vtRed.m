function [ Y ] = vtRed( y, x )
    Y(:,:,1) = uint8(ones(x, y) * 255);
    Y(:,:,2) = [0:y;0:y];
    Y(:,:,3) = [0:y;0:y];

end

