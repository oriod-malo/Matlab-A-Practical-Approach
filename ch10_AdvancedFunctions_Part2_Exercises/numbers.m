function out = numbers(num,varargin)

% Write a function "numbers" that will create a matrix in which every element storses the same number num. Either two or three arguments will be passed to the function. The first arguments will always be the number num. Then if there are two arguments, the second will be the size of the resulting square (n x n) matrix. If there are three arguments, the second and third will be the number of rows and columns in the resulting matrix.

    if nargin == 2
        n = varargin{1};
        out =  num * ones(n);
    elseif nargin == 3
        n = varargin{1};
        m = varargin{2};
        out = num * ones(n,m);
    end
end

