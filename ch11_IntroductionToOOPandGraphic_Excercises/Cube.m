classdef Cube < Square
    % Create a base class Square and then a derived class Cube, similar 
    % to the Rectangle/Box example from the chapter. Include a function to 
    % calculate the area of a square and volume of a cube.

    methods
        function obj = Cube(l)
            obj@Square(l);
        end
        
        function V = Volume(obj)
            V = obj.Area * obj.length;
        end
    end
end

