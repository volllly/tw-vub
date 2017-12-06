function [ Y ] = rndNoiseImg( x, y )
Y(:,:,1) = uint8(randi([0 255],x,y));
end

