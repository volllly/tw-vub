function [ Y ] = compareLuminance( I )
%COMPARELUMINANCE Shows difference between RGB2Luminance and rgb2gray

Y = rgb2gray(I) - RGB2luminance(I);
end

