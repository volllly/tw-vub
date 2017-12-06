function [ Y ] = hzRed( y, x )
    Y(:,:,1) = uint8(ones(x, y) * 255);
    Y(:,:,2) = uint8(ones(x, y));
    Y(:,:,3) = uint8(ones(x, y));

    for i = 1:y
       Y(:,i,2) = Y(:,i,2) * uint8(255 * i / y);
       Y(:,i,3) = Y(:,i,3) * uint8(255 * i / y);
    end

end

