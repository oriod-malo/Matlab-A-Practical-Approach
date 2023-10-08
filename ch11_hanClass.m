classdef ch11_hanClass < handle
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        x = 0;
    end
    
    methods
        function obj = ch11_hanClass(in)
            if nargin == 1
                obj.x = in;
            end
        end
        
        function out = add(obja,objb)
            out = ch11_hanClass(obja.x + objb.x);
        end
        
        function outobj = timestwo(inobj)
            outobj = ch11_hanClass(inobj.x * 2);
        end
        
        function timesthree(obj)
            obj.x = obj.x * 3;
        end
    end
end

