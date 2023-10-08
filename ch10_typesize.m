function [arrtype, varargout] = ch10_typesize(inputval)
% typesize returns a character 's' for scalar, 'v' for vector or 'm' for
% matrix input argument. Also returns length of a vector or dimensions of
% the matrix.
% Format: ch10_typesize(inputArguments)

[r, c] = size(inputval);

    if r==1 && c==1
        arrtype = 's';
    elseif r==1 || c==1
        arrtype = 'v';
        varargout{1} = length(inputval);
    elsei
        arrtype = 'm';
        varargout{1}=r;
        varargout{2}=c;
end

