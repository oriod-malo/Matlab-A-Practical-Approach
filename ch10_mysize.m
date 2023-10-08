function [row, col, varargout] = ch10_mysize(mat)
%mysize returns dimensions of input arguments and possibly also total nr of
%elements.
% Format: ch10_mysize(inputArgument)

    [row, col] = size(mat);

    if nargout == 3
        varargout{1} = row * col;
    end
end

