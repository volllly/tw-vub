function [ Y ] = greenbox(G, B)
    rc = G(:,:,1);
    gc = G(:,:,2);
    bc = G(:,:,3);
    
    N_G = double(G)/255;
    mask = N_G(:,:,2).*(N_G(:,:,2)-N_G(:,:,1)).*(N_G(:,:,2)-N_G(:,:,3));
    % imshow(mask)
    mask = mask > 0.1*mean(mask(mask>0));
    
    g_rc = G(:,:,1).*uint8(~mask);
    g_gc = G(:,:,2).*uint8(~mask);
    g_bc = G(:,:,3).*uint8(~mask);
    
    b_rc = B(:,:,1).*uint8(mask);
    b_gc = B(:,:,2).*uint8(mask);
    b_bc = B(:,:,3).*uint8(mask);
    
    
    Y(:,:,1) = g_rc + b_rc;
    Y(:,:,2) = g_gc + b_gc;
    Y(:,:,3) = g_bc + b_bc;
end

