function [ Y ] = rndColoredNoiseImg( x, y )
Y(:,:,1) = uint8(randi([0 255],x,y));
Y(:,:,2) = uint8(randi([0 255],x,y));
Y(:,:,3) = uint8(randi([0 255],x,y));
end

