classdef Point
    %  Create a base class named Point that has properties for x and y 
    % coordinates. From this class derive a class named Circle having an 
    % additional property named radius. For this derived class the x and y 
    % data members represent the center coordinates of a circle. The 
    % function members of the base class should consist of a constructor, an 
    % area function that returns 0, and a distance function that returns the 
    % distance between two points ( sqrt((x2-x1)2  + (y2-y1)2 )). The derived 
    % class should have a constructor and an override function named area 
    % that returns the area of a circle. Write a script that has 2 objects of 
    % each class and calls all of the member functions.
    
    properties
        x
        y
    end
    
    methods
        function obj = Point(coord_x,coord_y)
            obj.x = coord_x;
            obj.y = coord_y;
        end
        function A = Area(obj)
            A = 0;
            fprintf("The area of the point is always 0!\n");
        end
        function d = distance(obj_a,obj_b)
            d = sqrt( (obj_b.x-obj_a.x)^2 + (obj_b.y-obj_a.y)^2 );
            fprintf("The distance between the two points is: %.2f\n",d);
        end
    end
    
end

