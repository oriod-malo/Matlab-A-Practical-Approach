classdef ComplexNumber

    % Write a program that creates a class for complex numbers. A 
    % complex number is a number of the form a + bi, where a is the real 
    % part, b is the imaginary part, and i = 1 . The class Complex should 
    % have properties for the real and imaginary parts. Overload the disp
    % function to print a complex number.
    
    properties
        Re
        Im
    end
    
    methods
        function obj = ComplexNumber(a,b)
            %UNTITLED3 Construct an instance of this class
            %   Detailed explanation goes here
            obj.Re = a;
            obj.Im = b;
        end
        
        function disp(obj)
            if(obj.Im<0)
                fprintf("%.2f - %.2fi\n",obj.Re,abs(obj.Im));
            else
                fprintf("%.2f + %.2fi\n",obj.Re,obj.Im);
            end
        end
    end
end

