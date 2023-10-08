function varargout = cylcalcs(r,h)
% Write a function "cylcalcs" that will receive the radius and height of a
% cylinder and will return the area and volume of a the cylinder. If the
% function is called as an expression or is an assignment statement with
% one variable to the left, it will return the area and volume together in
% one vector. 
% On the other hand, if the function is called in an assignment statement
% with two variables on the left, the function will return the area and
% volume separately (in that order). The function will call a subfunction
% to calculate the area. The formulas are:
% Area = pi * radius^2
% Volume = Area * height

    function a = area(r)
        a = pi*(r.^2);
    end

    a = area(r);
    v = a*h;

    if nargout <= 1
        varargout{1} = [a v];
    else
        varargout{1} = a;
        varargout{2} = v;
    end
end

