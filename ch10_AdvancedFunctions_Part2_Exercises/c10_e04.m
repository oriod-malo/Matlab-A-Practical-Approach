function [vol,varargout] = c10_e04(r)

% Write a function that will receive the radius r of a sphere. It will calculate and return the volume of the sphere (4/3 pi * (r.^3)). If the function call expects two output arguments, the function will also return the surface area of the sphere (4 pi * r.^2)
    vol = (4./3)*pi*(r.^3);

    if nargout == 2
        varargout{1} = 4*pi*(r.^2);
    end
end

