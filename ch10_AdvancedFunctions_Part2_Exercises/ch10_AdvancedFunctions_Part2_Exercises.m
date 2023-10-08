%% Chapter 10 - Advanced Functions - Part 2 (Excercises)

%% Chapter 10 Exercise 01

% Write a function that will print a random integer. If no arguments are
% passed to the function it will print an integer in the inclusive range
% from 1 to 100. If one argument is passed, it is the max and the integer
% will be in the inclusive range from 1 to max. If two arguments are
% passed, they represent the min and max and it will print an integer in
% the inclusive range from min to max.

ch10_ex01()
ch10_ex01(10)
ch10_ex01(5,10)

%% Chapter 10 Exercise 02

% Write a function "numbers" that will create a matrix in which every
% element storses the same number num. Either two or three arguments will
% be passed to the function. The first arguments will always be the number
% num. Then if there are two arguments, the second will be the size of the
% resulting square (n x n) matrix. If there are three arguments, the second
% and third will be the number of rows and columns in the resulting matrix.

sol_c10e02_a = numbers(3,3)
sol_c01e02_b = numbers(4,2,3)

%% Chapter 10 Exercise 03

% The overall electrical resistance of n resistors in parallel is given as:
% Rt = (1/R1 + 1/R2 + 1/R3 + ... 1/Rn)^-1
% Write a function "Red" that will receive a variable number of resistance
% values and wil return the equivalent electrical resistance of the
% resistor network

c10_e03(10,20,50)
%1/10 + 1/20 + 1/50 = 0.17
% 0.17 ^ -1 = 5.882
c10_e03(100,200,100)

%% Chapter 10 Exercise 04

% Write a function that will receive the radius r of a sphere. It will
% calculate and return the volume of the sphere (4/3 pi * (r.^3)). If the
% function call expects two output arguments, the function will also return
% the surface area of the sphere (4 pi * r.^2)

c10_e04(2)

[vol, area] = c10_e04(2)

%% Chapter 10 Exercise 05

% Most lap swimming pools have lanes that are either 25yd long or 25m
% long; there's not much difference, A function "convyards" is to be written
% to help swimmers calculate how far they swam. The function receives as
% input the number of yards. It calculates and returns the equivalent
% number of meters, and, if and only if two output arguments are respected,
% it also returns the equivalent number of miles. The relevant conversion
% factors are:
% 1 meter = 1.0936133 yards
% 1 mile = 1760 yards

convyards(25)
[meters, miles] = convyards(25)

%% Chapter 10 Exercise 06

% Write a function "unwind" that will receive a matrix as an input argument.
% It will return a row vector created columnwise from elements in the
% matrix. If the number of expected output elements is 2, it will also
% return this as a column vector.

mat = [1 2 3; 4 5 6; 7 8 9];
unwind(mat)
[r,c] = unwind(mat)

%% Chapter 10 Exercise 07

% Write a function "cylcalcs" that will receive the radius and height of a
% cylinder and will return the area and volume of a the cylinder. If the
% function is called as an expression or is an assignment statement with
% one variable to the left, it will return the area and volume together in
% one vector. 
% On the other hand, if the function is called in an assignment statement
% with two variables on the left, the function will return the area and
% volume separately (in that order). The function will call a subfunction
% to calculate the area. The formulas are:
% Area = pi * radius^2
% Volume = Area * height

vector = cylcalcs(3,5)
[a,v] = cylcalcs(3,5)

%% Chapter 10 Exercise 08

% Information on some hurricanes is stored in a vector of structures; the
% name of the vector variable is hurricanes. For example one of the
% structures might be initialized as folows:
% struct('Name', 'Bettylou', 'Avspeed', 18, ...
%        'Size', struct('Width?,333, 'Eyewidth',22));
% Write a function printHurr taht will receive a vector of structures in
% this format as an input argument. It will print, for every hurricane, its
% Name and Width in a sentence format to the screen. If a second argument
% is passed to the function, it is a file identifier for an output file
% (which means that the file has already been opened), and the function
% will print the same format to this file (and does not close it)

%% Chapter 10 Exercise 09

% The built-in function date returns a string containing the day, month and
% year. Write a function (using the date function) that will always return
% the current day. If the function call expects two output arguments, it
% will also return the month. If function call expects three output
% arguments, it will also return the year.
c10_e09()
[d,m] = c10_e09()
[d,m,y] = c10_e09()

%% Chapter 10 Exercise 10

% Theoretical question. Nothing to solve.

%% Chapter 10 Exercise 11

% Theoretical question. Nothing to solve.

%% Chapter 10 Exercise 12

% Write a function that will receive a variable number of input arguments:
% the length and width of a rectangle and possibly, also the height of a
% box that has this rectangle as a base. The function should return the
% rectangle area if just the length and width are passed, or also the
% volume if the height is also passed.

c10_e12(3,4)

[a,v] = c10_e12(3,4,2)



%% Chapter 10 Exercise 13

% Write a function to calculate the volume of a cone. The volume V = AH
% where A is the area of the circular base (A = pi*r^2) and H is the
% height. Use a nested function to calculate A.

c10_e13(3,5)


%% Chapter 10 Exercise 14

% The two real roots of the quadratic equation ax^2+bx+c=0 where a is
% nonzero are given by [-b +/- sqrt(D)] / 2a , where the discriminant D =
% b^2 - 4ac.  Pass the values of a b and c to the function. Use a nested
% function to calculate the discriminant

c10_e14(1,5,6)
c10_e14(1,-3,5)
c10_e14(-4,12,-9)

%% Chapter 10 Exercise 15

% The velocity of the sound in air is 49.02 * sqrt(T) ft/s where T is the
% air temperature in degress rankine. Write an anonymous function that will
% calculate this. One argument, the air temperature in degrees R, will be
% passed to the function and will return the velocity of the sound.

ch10_e15 = @(T) 49.02*sqrt(T);
ch10_e15(4)

%% Chapter 10 Exercise 16

% Create a set of anonymous functions to do length conversions and store
% them in a file called lencov.mat. Call each with a descriptive name, such
% as cmtoinch to convert from centimeters to inches.

    cm_to_inch = @(cm) cm/2.54;
    inch_to_cm = @(inch) inch*2.54;
    inch_to_ft = @(inch) inch/12;
    ft_to_inch = @(ft) ft*12;
    save lencov;
    
%call from Command Window: clear (to clear the memory)
%call from Command Window: load lencov

%% Chapter 10 Exercise 17

% Write an anyonymous function to convert fluid ounces to mililitres. The
% conversion is one fluid ounce is equivalent to 29.57 mL.

ounce_to_ml = @(ounces) ounces*29.57;
ounce_to_ml(100)

%% Chapter 10 Exercise 18

% Theoretical question. Nothing to solve.

%% Chapter 10 Exercise 19

% Write an anonymous function to implement the following quadratic: 3x^2 -
% 2x + 5. Then use fplot to plot the function from -6 to 6

ch10_e19 = @(x) 3*(x^2)-2*x+5;
fplot(ch10_e19,[-6 6])

%% Chapter 10 Exercise 20

% Write a function that will receive data in the form of x and y vectors,
% and a handle to plot a function and will produce the plot. For example,
% a call to the function would look like wsfn(x,y,@bar).
x=1:4;
y=[10 5 6 10];
ch10_e20(x,y,@bar)

%% Chapter 10 Exercise 21

% Write a function plot2fnhand that will receive two function handles as
% input arguments and will display in two Figure Windows, plots of these
% functions with unction names in the titles. The function will create an
% x vector that ranges from 1 to n where n is a random integer in the
% inclusive range from 4 to 10. For example, if the function is called as
% follows:
% >> plot2fnhand(@sqrt,@exp)
% and the random integer is 5, the first figure would display the sqrt
% function of x = 1:5, and the second figure would display the exp(x)
% function for x = 1:5

plot2fnhand(@sqrt,@exp)
%% Chapter 10 Exercise 22

% Use feval as an alternative way to accomplish the following function
% calls:
% abs(-4)
% size(zeros(4)). NOTE: Use feval twice for this one.

ch10_e22_a = feval(@abs,-4)
ch10_e22_b = feval(@size,feval(@zeros,4))

%% Chapter 10 Exercise 23

% There is a built-in function function called cellfun that evaluates a 
% function for every element of a cell array. Create a cell array, then  
% call the cellfun function, passing the handle of the length function  
% and the cell array to determine the length of every element in the cell 
% array.

c = {42, rand(5), "This is my function", [1 2 3;4 5 6;7 8 9]};
cellfun(@length,c)

%% Chapter 10 Exercise 24

% A recursive definition of an
%  where a is an integer and n is a nonnegative integer follows:
% 
%  a^n      = 1 if n == 0
%           = a * a^(n-1) if n > 0
%
% Write a recursive function called mypower, which receives a and n and 
% returns the value of an
%  by implementing the previous definition. Note: 
% The program should NOT use ^ operator anywhere; this is to be done 
% recursively instead! Test the function.

mypower(2,0)
mypower(2,2)
mypower(2,10)

%% Chapter 10 Exercise 25

% Theoretical question. Nothing to solve.

%% Chapter 10 Exercise 26

% The Fibonacci numbers is a sequence of numbers Fi:
% 0 1 1 2 3 5 8 13 21 34...
%  Where F0 is 0, F1 is 1, F2 is 1, F3 is 2 and so on. A recursive
%  definition is:
% F0 = 0
% F1 = 1
% Fn = Fn-2 + Fn-1 if n>1
% Write a recursive function to implement this definition. The function
% will receive one integer argument n and it will return one integer value
% that is the nth Fibonacci number. Note that in this definition there is
% one general case but two base cases. Then, test the function by printing
% the first 20 Fibonacci numbers.

for i=0:19
    fprintf('%d ',ch10_e26(i));
end
fprintf('\n');

%% Chapter 10 Exercise 27

% Use fgets to read strings from a file and recursively print them
% backwards.
