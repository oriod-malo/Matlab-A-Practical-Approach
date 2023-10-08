function plotline(x,y,varargin)
    lineWidth = 5;
    if nargin == 3
        lineWidth=varargin{1}
    end
    line(x,y,'LineWidth',lineWidth);

end

