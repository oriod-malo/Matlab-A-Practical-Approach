function g = ch10_geomser(varargin)

    n = nargin;
    r = varargin{1};
    s = 0;
    
    if nargin == 2
        s = varargin{2}; % s = size
    else
        s = randi([5 30]);     
    end
    
    g = sum(r.^[0:s]);
    
end

