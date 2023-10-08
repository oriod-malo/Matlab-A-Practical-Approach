function [meters,varargout] = convyards(yards)
% A function "convyards" is to be written
% to help swimmers calculate how far they swam. The function receives as
% input the number of yards. It calculates and returns the equivalent
% number of meters, and, if and only if two output arguments are respected,
% it also returns the equivalent number of miles. The relevant conversion

meters = 1.0936133*yards;
    if nargout == 2
        varargout{1} = 1760*yards;
    end
end

