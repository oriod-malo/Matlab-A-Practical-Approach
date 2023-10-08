function RT = c10_e03(varargin)

% The overall electrical resistance of n resistors in parallel is given as: Rt = (1/R1 + 1/R2 + 1/R3 + ... 1/Rn)^-1. Write a function "Red" that will receive a variable number of resistance values and wil return the equivalent electrical resistance of the resistor network
    sum = 0;
    for i=1:nargin
        sum =  sum + (1/varargin{i});
    RT = sum.^-1;
end

