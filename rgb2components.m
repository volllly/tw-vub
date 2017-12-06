function [ Y ] = rgb2components( I )

Y(:,:,1) = RGB2luminance(I);
Y(:,:,2) = Y(:,:,1) - I(:,:,1);
Y(:,:,3) = Y(:,:,1) - I(:,:,3);
end

