function out = ch10_ex01(varargin)

% Write a function that will print a random integer. If no arguments are passed to the function it will print an integer in the inclusive range from 1 to 100. If one argument is passed, it is the max and the integer will be in the inclusive range from 1 to max. If two arguments are passed, they represent the min and max and it will print an integer in the inclusive range from min to max.
    n = nargin;

    if n == 0
        out = randi([1 100]); 
    elseif n == 1
        max = varargin{1};
        out = randi([1 max]);
    elseif n == 2
        min = varargin{1};
        max = varargin{2};
        out = randi([min max]);
    end
end

