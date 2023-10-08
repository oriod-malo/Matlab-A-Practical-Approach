%% Chapter 10 - Advanced Functions - Part 1 (Theory)

%% 10.1 Variable number of arguments
%%
area1_feet = ch10_areafori(3);
area1_inch = ch10_areafori(1,'i');
%%
g1 = ch10_geomser(1);
g2 = ch10_geomser(2,4);
%%
t1 = ch10_typesize(5)
[t2, size] = ch10_typesize([3 4])
[t3, rows, columns] = ch10_typesize([5 11 3; 1 -4 5])

%%
[r, c] = ch10_mysize(eye(3))
[r, c, elem] = ch10_mysize(eye(3))

%% 10.2 Nested Functions

% Excerpt from the book:
% Just as loops can be nested, meaning one inside of another, functions can
% also be nested. The terminology for nested functions is that an outer
% function can have within it one or more inner functions. When functions
% are nested, every function must have an end statement.

%%
v = ch10_nestedvolume(3,5,7)

%% 10.3 Anonymous Functions and Function Handles

% Excerpt from the book:
% An anonymous function is a very simple, one line function. The advantage
% of an anonymous function is that it does not have to be stored in a
% separate file. This The syntax for an anonymous function is:
% fhandlevar = @ (arguments) functionbody
% fhandlevars stores the function handle which is a way of referring to the
% function.
%%
circarea = @(radius) pi*radius.^2;
% after running this block call from the Command Window:
% circarea(4)
% You should get ans = 50.2655
% Now try
% areas = circarea(1:4)
% You should get:       3.1416   12.5664   28.2743   50.2655

%%
prtran = @ () fprintf('%.2f\n',rand);
% after running this block, calling from command window:
% prtran() - yields a result 
% prtran - typing the function handle will display its content

%% 10.4 Uses of Function Handles & Function Functions

% Excerpt from the book:
% One reason for using function handles is to be able to pass functions to
% other functions - these are called function functions. For example, let's
% say we have a function that creates an x-vector. The y-vector is created
% by evaluating a function at each of the x points, and then these points
% are plotted.

%%
ch10_fnfexamp(@sin)
%%
ch10_fnfexamp(@cos)
%%
ch10_fnfexamp(circarea)
%%
fplot(@sin, [-pi,pi]) % matlab built in function function
%%
fh = @()prod(1:10000000);
timeit(fh) % timeit  functions takes one input argument, which is a function handle.

%% 10.5 Recursive Functions

% Recursive function is a function that calls itself. Recursion is very
% commonly used in programming, although many simple examples shown here
% are not very efficient and might be replaced by iterative methods (loops
% or vectorized code in MATLAB)
%%
factorial3 = ch10_factorial(3)