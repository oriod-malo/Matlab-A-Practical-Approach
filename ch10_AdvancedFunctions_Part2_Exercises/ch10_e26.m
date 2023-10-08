function out = ch10_e26(n)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    if n==0
        out = 0;
    elseif n==1
        out = 1;
    else
        out = ch10_e26(n-2)+ch10_e26(n-1);
    end
end

