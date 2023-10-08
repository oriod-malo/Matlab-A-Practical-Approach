function [out,varargout] = unwind(m)

% Write a function "unwind" that will receive a matrix as an input argument.
% It will return a row vector created columnwise from elements in the
% matrix. If the number of expected output elements is 2, it will also
% return this as a column vector.

    out = m(1:end);

    if nargout == 2
        varargout{1}=transpose(out);
    end
end

