classdef Square
    % Create a base class Square and then a derived class Cube, similar 
    % to the Rectangle/Box example from the chapter. Include a function to 
    % calculate the area of a square and volume of a cube.

    properties
        length
    end
    
    methods
        function obj = Square(l)
            obj.length = l;
        end
        
        function A = Area(obj)
            A = obj.length.^2;
        end
    end
end

