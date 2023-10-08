function out = ch14e06(v)
% ----------------------------------------------------------------------- %
% A median filter on a vector has a size, for example, a size of 3 
% means calculating the median of every three values in the vector. The 
% first and last elements are left alone. Starting from the second 
% element to the next-to-last element, every element of a vector vec(i) is
% replaced by the median of [vec(i-1) vec(i) vec(i+1)]. For example, if 
% the signal vector is
% signal = [5 11 4 2 6 8 5 9]
%  the median filter with a size of 3 is
% medianFilter3 = [5 5 4 4 6 6 8 9]
% Write a function to receive the original signal vector and return the 
% median filtered vector.
% ----------------------------------------------------------------------- %

    n=length(v);
    out(1) = v(1);
    for i = 2:n-1
        out(i) = median([v(i-1) v(i) v(i+1)]);
    end
    out(n) = v(n);
end

