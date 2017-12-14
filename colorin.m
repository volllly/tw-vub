function [Y] = colorin(I)
    rc = uint8(zeros(size(I)));
    gc = uint8(zeros(size(I)));
    bc = uint8(zeros(size(I)));
    
    red_mask = I == 0;
    green_mask = I == 85;
    yellow_mask = I == 170;
    cyan_mask = I == 255;<
    
    rc(red_mask) = 255;
    
    gc(green_mask) = 255;
    
    rc(yellow_mask) = 255;
    gc(yellow_mask) = 255;

    gc(cyan_mask) = 255;
    bc(cyan_mask) = 255;
    
    Y(:,:,1) = rc;
    Y(:,:,2) = gc;
    Y(:,:,3) = bc;
end

