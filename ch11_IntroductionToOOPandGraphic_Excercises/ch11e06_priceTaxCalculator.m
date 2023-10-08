% Create a class that will store the price of an item in a store, as well 
% as the sales tax rate. Write an ordinary method to calculate the total 
% price of the item, including the tax.

classdef ch11e06_priceTaxCalculator    
    properties
        price
        TaxRate = 5;
    end
    
    methods
        function obj = ch11e06_priceTaxCalculator(varargin)
            if (nargin == 1)
                obj.price = varargin{1};
            elseif (nargin == 2)
                if((varargin{2}<0) || (varargin{2} > 100))
                    error("The Tax rate is a percentage, so it must be included between 0 and 100");
                else
                    obj.price = varargin{1};
                    obj.TaxRate = varargin{2};
                end
            else
                error("Incorrect number of arguments\n");
            end
        end
        
        function out = calculateFullPrice(obj)
            out = obj.price + (obj.price*obj.TaxRate./100);
        end
    end
end

