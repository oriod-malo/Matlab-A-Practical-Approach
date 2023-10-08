function [a,varargout] = c10_e12(l,w,varargin)

% Write a function that will receive a variable number of input arguments:
% the length and width of a rectangle and possibly, also the height of a
% box that has this rectangle as a base. The function should return the
% rectangle area if just the length and width are passed, or also the
% volume if the height is also passed.

    a = l*w;
    if nargin == 3
        varargout{1}=a*varargin{1};
    end
end