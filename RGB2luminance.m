function [ Y ] = RGB2luminance( I )
%RGB2GRAY Converts RGB to GREY image
Y= 0.3*I(:,:,1) + 0.59*I(:,:,2) + 0.11*I(:,:,3);
end