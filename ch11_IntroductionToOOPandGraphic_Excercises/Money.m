classdef Money
    
%     Construct a class named Money that has 5 data members for 
%     dollars, quarters, dimes, nickels, and pennies. Include an ordinary 
%     function equivtotal that will calculate and return the equivalent  
%     total of the properties in an object (e.g., 5 dollars, 7 quarters, 
%     3 dimes, 0 nickels and 6 pennies is equivalent to 7.11).
%     Overload the disp function to display the properties.

    properties
        dollars
        quarters
        dimes
        nickles
        pennies
    end
    
    methods
        function obj = Money(d,q,m,n,p)
            obj.dollars = d;
            obj.quarters = q;
            obj.dimes = m;
            obj.nickles = n;
            obj.pennies = p;
        end
        
        function eq = equivalent(obj)
            eq = obj.dollars + (0.25*obj.quarters) + (0.1*obj.dimes)+ (0.05*obj.nickles) + (0.01*obj.pennies);
        end
        
        function disp(obj)
            fprintf("Dollars: %.2f, Quarters: %.2f, Dimes: %.2f, Nickles: %.2f, Pennies: %.2f\n Total: %.2f\n",obj.dollars,obj.quarters,obj.dimes,obj.nickles,obj.pennies,obj.equivalent)
        end
    end
end

