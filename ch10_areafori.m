function area = ch10_areafori(varargin)
% areafori returns the area of the circle in feet
% the radius is passed, and potentially the unit of inches is also passed,
% in which case the result will be given in inches instead of feet
% format: ch10_areafori(radius) or areafori(radius,'i')

n = nargin;                 % "n arg in" number of input arguments
radius = varargin{1};       % Given in feet by default
    if n==2
      unit = varargin{2};
    % if inches is specified, convert the radius
        if unit == 'i'
            radius = radius * 12;
        end
    end
    area = pi*radius.^2;
end

