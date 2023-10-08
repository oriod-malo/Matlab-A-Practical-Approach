function out = c10_e13(r,h)

% Write a function to calculate the volume of a cone. The volume V = AH
% where A is the area of the circular base (A = pi*r^2) and H is the
% height. Use a nested function to calculate A.
    
    out = a*h;
    
    function area = a
        area = pi*(r.^2);
    end
end

