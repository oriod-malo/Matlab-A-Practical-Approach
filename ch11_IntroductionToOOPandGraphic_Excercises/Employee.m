classdef Employee
    % 
    %  Create a class that stores information on a company’s employees. 
    %
    % The class will have properties to store the employee’s name, a  
    % 10-digit ID, their department and a rating from 0 to 5. 

    % Overwrite the set.propertyname function to check that each
    % property is the correct class and that:
    % * The employee ID has 10 digits numel(num2str(...))

    % * The department is one of the following codes: HR (Human 
    % Resources), IT (Information Technology), MK (Marketing), AC 
    % (Accounting), or RD (research and Development)

    % * The rating is a number from 0 to 5. 

    % The rating should not be accessible to anyone without a password. 
    % Overwrite the set.rating and get.rating functions to prompt the user 
    % for a password. Then, write a function that returns the rating.

    properties (SetAccess = protected)
        Name
        ID
        Department
    end
    
    properties (Access = private)
        Rating
        password = 1234;
    end
    
    methods
        function obj = Employee(varargin)
            if nargin == 1
                obj.Name= varargin{1};
            elseif nargin == 2
                obj.Name = varargin{1};
                obj.ID = varargin{2};
            elseif nargin == 3
                obj.Name = varargin{1};
                obj.ID = varargin{2};
                obj.Department = varargin{3};
            elseif nargin == 4
                obj.Name = varargin{1};
                obj.ID = varargin{2};
                obj.Department = varargin{3};
                obj.Rating = varargin{4};    
            else
                error("Incorrect number of arguments!\n\n");
            end
        end
        
        function obj = set.Name(obj,val)
            if isa(val,'char')
                obj.Name = val;
            else
                error('Not a valid name!\n');
            end
        end
        function obj = set.ID(obj,val)
            if ( isa(val,'numeric') && (numel(num2str(val))==10))
                obj.ID = val;
            else
                error('Not a valid ID\n');
            end
        end
        function obj = set.Department(obj,val)
            if strcmp(val,'HR')
                obj.Department = val;
            elseif strcmp(val, 'IT')
                obj.Department = val;
            elseif strcmp(val, 'MK')
                obj.Department = val;
            elseif strcmp(val, 'AC')
                obj.Department = val;
            elseif strcmp(val, 'RD')
                obj.Department = val;
            else
                error('Not a valid department.\n');
            end
        end
        function obj = set.Rating(obj,val)
            code = input('Password required: ');
            if code == obj.password
                if (val >= 0 && val <= 5)
                    obj.Rating = val;
                else
                    error('Not a valid rating.\n');
                end
            else
                error('Wrong password!\n');
            end
        end
        function val = get.Rating(obj)
            code = input('Password required: ');
            if code == obj.password
                val = obj.Rating;
            else
                error('Wrong password!\n');
            end
        end
        
     function rat = seeRating(obj)
         rat = obj.Rating;
     end
     
    end % methods end
    
end

