classdef softwareClass

    % Create a class designed to store and view information on software 
    % packages for a particular software superstore. For every software 
    % package, the information needed includes the item number, the cost 
    % to the store, the price passed on to the customer, and a code  
    % indicating what kind of software package it is (e.g., ‘c’ for a 
    % compiler, ‘g’ for a game, etc.). Include a member function profit   
    % that calculates and prints the profit on a particular software
    % product.

    properties
        item_no = 123
        cost = 19.99
        price = 24.99
        code = 'x'
    end
    
    methods
        function obj = softwareClass(it, cost, p, code)
            if nargin == 4
                obj.item_no = it;
                obj.cost = cost;
                obj.price = p;
                obj.code = code;
            end
        end
        
        function prof = profit(obj)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            prof = obj.price - obj.cost;
            fprintf("The profit is $%.2f\n",prof);
        end
        
     
    end
end

