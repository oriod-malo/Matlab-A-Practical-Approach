classdef MyCourse
    % Create a class MyCourse that has properties for a course number, 
    % number of credits, and grade. Overload the disp function to display 
    % this information.
    
    properties
        courseNumber = 0;
        credits = 0;
        grade = 0;
    end
    
    methods
        function obj = MyCourse(N,C,G)
            obj.courseNumber = N;
            obj.credits = C;
            obj.grade = G;
        end
        
        function disp(obj)
            fprintf("Course Number: %d\nCredits: %d\nGrade: %d\n",obj.courseNumber,obj.credits,obj.grade);
        end
    end
end

