classdef ch11_valClass
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        x = 0;
    end
    
    methods
        function obj = ch11_valClass(in)
            if nargin == 1
                obj.x = in;
            end
        end
        
        function out = add(obja,objb)
            % receives two objects, adds the x properties together and
            % returns an object in which the x property is the sum of the
            % two inputs
            out = ch11_valClass(obja.x + objb.x);
        end
        
        function outobj = timestwo(inobj)
            %receives one object and returns an object in which the
            %property is the property of the input argument multiplied by
            %two.
            outobj = ch11_valClass(inobj.x*2);
        end
        
        function timesthree(obj)
            % Receives one object, multiplies its property by three but
            % does not return anything.
            obj.x = obj.x * 3;
        end
    end
end

