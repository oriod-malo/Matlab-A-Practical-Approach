function varargout = c10_e09()

% The built-in function date returns a string containing the day, month and
% year. Write a function (using the date function) that will always return
% the current day. If the function call expects two output arguments, it
% will also return the month. If function call expects three output
% arguments, it will also return the year.
dt = date;

    if nargout <= 1
        varargout{1} = dt(1:2);
    elseif nargout == 2
        varargout{1} = dt(1:2);
        varargout{2} = dt(4:6);
    else 
        varargout{1} = dt(1:2);
        varargout{2} = dt(4:6);
        varargout{3} = dt(8:11);
    end
end

