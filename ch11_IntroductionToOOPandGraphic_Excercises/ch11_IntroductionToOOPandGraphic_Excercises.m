%% Chapter 11 Excercises

%% Excercise 1

% Create a double variable. Use the functions "methods" and 
% properties to see what are available for the class double.

number  = 10.5;
methods(number)
properties(number)

%% Excercise 2

% Create a simple plot and store the handle in a variable. Use the 
% three different methods (dot notation, set, and structure) to change 
% the Color property.

x = 0:0.1:2*pi;
y = sin(x);
p = plot(x,y,'r')

%%
p.Color = [0 1 0];
p
%%
set(p,'Color','b')
%%
%third method????


%% Excercise 3

% Create a bar chart and store the handle in a variable. Change the 
% EdgeColor property to red.

x = [1 2 3 4 5 6];
y = [11 5 21 14 11 3];
bar_handle = bar(x,y)
set(bar_handle, 'EdgeColor', 'r')

%% Excercise 4

% Create a class circleClass that has a property for the radius of the 
% circle and a constructor function. Make sure that there is a default 
% value for the radius, either in the properties block or in the 
% constructor. Instantiate an object of your class and use the methods and 
% properties functions.

c1 = circleClass;
p1 = circumference(c1);
a1 = area(c1);

c2 = circleClass(5);
p2 = circumference(c2);
a2 = area(c2);

%% Excercise 5
% Add ordinary methods to circleClass to calculate the area and 
% circumference of the circle.
% ALREADY DONE

%% Excercise 6

% Create a class that will store the price of an item in a store, as well 
% as the sales tax rate. Write an ordinary method to calculate the total 
% price of the item, including the tax.

item1 = ch11e06_priceTaxCalculator(100);
price1 = calculateFullPrice(item1);
fprintf("The total price of the 1st item is: %.2f\n",price1);

item2 = ch11e06_priceTaxCalculator(100,10);
price2 = calculateFullPrice(item2);
fprintf("The total price of the 2nd item is: %.2f\n",price2);

%% Excercise 7

% Create a class designed to store and view information on software 
% packages for a particular software superstore. For every software 
% package, the information needed includes the item number, the cost to
% the store, the price passed on to the customer, and a code indicating 
% what kind of software package it is (e.g., ‘c’ for a compiler, ‘g’ for a 
% game, etc.). Include a member function profit that calculates and 
% prints the profit on a particular software product.

xfin = softwareClass

howmuch = xfin.profit;

pack = softwareClass(111,5,50,'g')

howmuch = pack.profit;

%% Excercise 8

% Create the Rectangle class from this chapter. Add a function to 
% overload the gt (greater than) operator. Instantiate at least two 
% objects and make sure that your function 

%% Excercise 9

% Create a class MyCourse that has properties for a course number, 
% number of credits, and grade. Overload the disp function to display 
% this information.

CalculusI = MyCourse(1153,9,24);
AlgebraGeometry = MyCourse(2414,6,28);

CalculusI.disp;
AlgebraGeometry.disp;

%% Excercise 10

% Construct a class named Money that has 5 data members for 
% dollars, quarters, dimes, nickels, and pennies. Include an ordinary 
% function equivtotal that will calculate and return the equivalent  
% total of the properties in an object (e.g., 5 dollars, 7 quarters, 
% 3 dimes, 0 nickels and 6 pennies is equivalent to 7.11).
% Overload the disp function to display the properties.

myMoney = Money(5,7,3,0,6);
myMoney.disp;

%% Excercise 11

% Write a program that creates a class for complex numbers. A 
% complex number is a number of the form a + bi, where a is the real 
% part, b is the imaginary part, and i = 1 . The class Complex should 
% have properties for the real and imaginary parts. Overload the disp
% function to print a complex number.

c1=ComplexNumber(3,5);
c2=ComplexNumber(-4,3);
c3=ComplexNumber(1,-4);
c4=ComplexNumber(-2,-7);
c1.disp;
c2.disp;
c3.disp;
c4.disp;

%% Excercise 12

% Create a base class Square and then a derived class Cube, similar 
% to the Rectangle/Box example from the chapter. Include a function to 
% calculate the area of a square and volume of a cube.

sq = Square(3);
cu = Cube(3);
sq.Area
cu.Volume

%% Excercise 13
% 
% Create a base class named Point that has properties for x and y 
% coordinates. From this class derive a class named Circle having an 
% additional property named radius. For this derived class the x and y 
% data members represent the center coordinates of a circle. The 
% function members of the base class should consist of a constructor, an 
% area function that returns 0, and a distance function that returns the 
% distance between two points ( sqrt((x2-x1)2  + (y2-y1)2 )). The derived 
% class should have a constructor and an override function named area 
% that returns the area of a circle. Write a script that has 2 objects of 
% each class and calls all of the member functions.
%

P1 = Point(3,4);
P2 = Point(4,6);
a1 = Area(P1);
a2 = Area(P2);
d=distance(P1,P2);

C1 = Circle(3,3,2);
C1.Area;

%% Excercise 15
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

emp = Employee('Bob',5277321413,'HR',3);
% test the methods by command window
% emp.Name
% emp.ID
% emp.Department
% emp.seeRating

% try executing from command window but with mistakes in each field: 
% Employee(333,5277321413,'HR',3);
% Employee('Bob',523,'HR',3);
% Employee('Bob',5277321413,'1HR',3);
% Employee('Bob',5277321413,'HR',6);

%% Excercise 16

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

%% Excercise 17

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

% Then, make the sensorNode class as a subclass of Satellite. It will have 
% the following properties: 

% * distance: The magnitude of the distance from the satellite. 
% Presume that a node’s location comes from on-board, real-time 
% updating GPS (i.e., do not worry about updating node.location).
% * fuel: Sensor nodes begin with 100 kg of fuel. 

% sensorNode also has the following methods: 
% * sensorNode: The constructor.
% * useThrust: Assume this propels node towards satellite. Each 
% usage consumes 2 kg of fuel. If the fuel is below 5 kg, send an 
% alert message to the satellite.

% * checkDistance: Check the magnitude of the distance between 
% * useMagnetometer: Write this as a stub. Have the “magnetometer
% reading” be a randomized number in the range 0 to 100. 
% * sendAlert: set the “nodeAlerts” Satellite property to the string 
% ‘Low fuel’.
