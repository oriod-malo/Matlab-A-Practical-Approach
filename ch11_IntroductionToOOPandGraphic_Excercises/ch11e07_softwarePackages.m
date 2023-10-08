% Create a class designed to store and view information on software 
% packages for a particular software superstore. For every software 
% package, the information needed includes the item number, the cost to
% the store, the price passed on to the customer, and a code indicating 
% what kind of software package it is (e.g., ‘c’ for a compiler, ‘g’ for a 
% game, etc.). Include a member function profit that calculates and 
% prints the profit on a particular software product.

classdef ch11e07_softwarePackages

    properties
        Property1
    end
    
    methods
        function obj = untitled4(inputArg1,inputArg2)
            %UNTITLED4 Construct an instance of this class
            %   Detailed explanation goes here
            obj.Property1 = inputArg1 + inputArg2;
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
    end
end

