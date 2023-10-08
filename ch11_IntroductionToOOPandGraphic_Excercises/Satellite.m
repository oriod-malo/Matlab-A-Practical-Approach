classdef Satellite
    
% You head a team developing a small satellite in competition for a 
% NASA contract. Your design calls for a central satellite that will deploy 
% sensor nodes. These nodes must remain within 30 km of the satellite to
% allow for data transmission. If they pass out of range, they will use an 
% impulse of thrust propulsion to move back towards the satellite.

% Make a Satellite class with the following properties: 
    % * location: An [X Y Z] vector of coordinates, with the satellite as 
        % the origin.
    % * magnetData: A vector storing magnetic readings.
    % * nodeAlerts: An empty string to begin with, stores alerts when 
        % nodes go out of range.

% Satellite also has the following methods: 
    % * Satellite: The constructor, which sets location to [0 0 0] and 
    % magnetData to 0.
    % * retrieveData: Takes data from a node, extends the magnetData 
    % vector. 
 
    properties
        location
        magnetData
        nodeAlerts
    end
    
    methods
        function obj = Satellite(varargin)
            if nargin == 1
                obj.location = varargin{1};
                obj.magnetData = 0;
            elseif nargin == 2
                obj.location = varargin{1};
                obj.magnetData = varargin{2};
            else
                obj.location = [0 0 0];
                obj.magnetData = 0;
            end
        end
        
        function obj = retrieveData(obj,node)
            obj.magnetData = obj.magnetData + node.magnetData;
        end
        
        
    end
end

