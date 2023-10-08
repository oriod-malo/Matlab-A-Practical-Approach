classdef Circle < Point
    % Create a base class named Point that has properties for x and y 
    % coordinates. From this class derive a class named Circle having an 
    % additional property named radius. For this derived class the x and y 
    % data members represent the center coordinates of a circle. 
    % 
    % The function members of the base class should consist of a 
    % constructor, an area function that returns 0, and a distance 
    % function that returns the  distance between two points
    % ( sqrt((x2-x1)2  + (y2-y1)2 ) ).
    % 
    % The derived class should have a constructor and an override  
    % function named area that returns the area of a circle.  
    % Write a script that has 2 objects of each class and calls all of
    % the member functions.
    
    properties
        radius
    end
    
    methods
        function obj = Circle(x0,y0,r)
            obj@Point(x0,y0);
            obj.radius = r;
        end
        
        function A = Area(obj)
            A = pi*(obj.radius.^2);
            fprintf("The area of the circle with radius %.2f is %.2f\n",obj.radius,A);
        end
    end
end

