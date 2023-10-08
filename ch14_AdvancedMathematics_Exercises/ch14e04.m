function out = ch14e04(vector)
% ----------------------------------------------------------------------- %
% Write a function that will return the mean of the values in a vector, 
% not including the minimum and maximum values. Assume that the 
% values in the vector are unique. It is okay to use the built-in mean
% function. To test this, create a vector of 10 random integers, each in 
% the range from 0 to 50, and pass this vector to the function.
% ----------------------------------------------------------------------- %

    [small, indLow] = min(vector);
    vector(indLow) = [];
    [large, indHigh] = min(vector);
    vector(indHigh) = [];

    out = mean(vector);
    
end

