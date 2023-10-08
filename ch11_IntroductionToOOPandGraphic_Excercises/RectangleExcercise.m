classdef RectangleExcercise
    
    properties
        len = 0;
        wid = 0;
    end % properties end
    
    methods
        function obj = RectangleExcercise(l,w)
            obj.len = l;
            obj.wid = w;
        end
        
        function outarg = rectarea(obj)
            outarg = obj.len*obj.wid;
        end
        
        function disp(obj)
            fprintf('The rectangle has a length of %.2f',obj.len);
            fprintf(' and width %.2f\n',obj.wid);
        end
        
        function out = lt(obj_a,obj_b)
            out = rectarea(obj_a) < rectarea(obj_b);
        end
        
        function out = gt(obj_a,obj_b)
            out = rectarea(obj_a) > rectarea(obj_b);
        end
    end % methods end
    
    
end %classdef end

