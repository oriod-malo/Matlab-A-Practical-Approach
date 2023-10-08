% Excercise 4

% Create a class circleClass that has a property for the radius of the
% circle and a constructor function. Make sure that there is a default
% value for the radius, either in the properties block or in the
% constructor. Instantiate an object of your class and use the methods and
% properties functions.

classdef circleClass
    
    properties
        radius = 2;
    end
    
    methods
        function obj = circleClass(varargin)
            if (nargin == 1)
                obj.radius = varargin{1};
            else if (nargin > 1)
                    error("Incorrect number of inputs");
                end
            end
        end
        
        % Excercise 5
        % Add ordinary methods to circleClass to calculate the area and 
        % circumference of the circle.
        
        function p = circumference(obj)
            p = 2*pi*obj.radius;
            fprintf("The perimeter of the circle is %.2f\n",p);
        end
        
        function a = area(obj)
            a = pi*(obj.radius.^2);
            fprintf("The area of the circle is %.2f\n",a);
        end
    end
end

