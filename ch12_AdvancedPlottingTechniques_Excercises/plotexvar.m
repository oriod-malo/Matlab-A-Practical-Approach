function plotexvar(varargin)
% Write a function "plotexvar" that will plot data points represented by 
% x and y vectors which are passed as input arguments. If a third 
% argument is passed, it is a line width for the plot, and if a fourth 
% argument is also passed, it is a color. The plot title will include the 
% total number of arguments passed to the function. Here is an example
% of calling the function and the resulting plot:
    hdl = plot(varargin{1},varargin{2});
    title(sprintf('Nr of arguments is %d',nargin));
    if nargin == 2
    elseif nargin == 3
        set(hdl,'LineWidth',varargin{3});
    elseif nargin == 4
        set(hdl,'LineWidth',varargin{3});
        set(hdl,'Color',varargin{4});
    else
        error('Erraneous number of arguments');
    end
end

