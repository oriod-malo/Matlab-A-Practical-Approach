classdef LogTime < handle
    
    % Create a handle class that logs the times a company’s employees 
    % arrive and leave at work. The class must have the following 
    % characteristics:

    % * As the employer, you do not want your employees to access the 
    % information stored.

    % * The class will store date, hour, minute, second and total time as 
    % properties. 

    % * The constructor function will input the data from the clock 
    % function, which returns a vector with format [year month day 
    % hour minute second].

    % * Each time an employee arrives or leaves, they must call a 
    % method LogTime that will store the new times with the old times. 

    % Include a method calcPay that calculates the money owed if it is 
    % assumed that the employees are paid $15/hour. In order to do this, call
    % a separate method that calculates the time elapsed between the last 
    % two time entries. Use the function etime. This method should only be 
    % available to call by calcPay, and the existence of calcPay should only 
    % be known to the coder

    properties
        date
        hour
        min
        sec
        time = 0;
    end % end Properties
    
     methods
         function obj = timeLog
             t = clock;
             obj.date = t(1:3);
             obj.hour = t(4);
             obj.min = t(5);
             obj.sec = t(6);
         end

         function LogTime(obj)
             t = clock;
             obj.date = [obj.date; t(1:3)];
             obj.hour = [obj.hour; t(4)];
             obj.min = [obj.min; t(5)];
             obj.sec = [obj.sec; t(6)];
         end
    end % end methods
    
     methods (Access= protected)
         function t = calcTime(obj)
             timevec1 = [obj.date(end,:), obj.hour(end),obj.min(end),obj.sec(end)];
             timevec2=[obj.date(end-1,:),obj.hour(end-1),obj.min(end-1),obj.sec(end-1)];
             t = etime(timevec1,timevec2);
         end
     end
     
     methods (Hidden)
         function mon = calcPay(obj)
             %Paid 15$/hour. Calculate $/second
             obj.time = obj.time + calcTime(obj);
             rate = 15/3600;
             mon = obj.time*rate;
         end
     end
 
end % end Classdef

