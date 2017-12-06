function [ Y ] = greenbox(G, B)
    rc = G(:,:,1);
    gc = G(:,:,2);
    bc = G(:,:,3);
    mask = (rc < 50) & (bc < 50) & (gc > 50);
    rc = rc.*uint8(mask);
    gc = gc.*uint8(mask);
    bc = bc.*uint8(mask);
    Y = [rc gc gc];
end

