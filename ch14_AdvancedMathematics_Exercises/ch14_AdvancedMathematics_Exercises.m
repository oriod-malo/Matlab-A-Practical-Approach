%% Chapter 14 Advanced Mathematics Exercises

%% Exercise 1
% ----------------------------------------------------------------------- %
% In a marble manufacturing plant, a quality control engineer 
% randomly selects eight marbles from each of the two production lines 
% and measures the diameter of each marble in millimeters. For the each
% data set here, determine the mean, median, mode, and standard 
% deviation using built-in functions. 
%       Prod. line A:15.94 15.98 15.94 16.16 15.86 15.86 15.90 15.88
%       Prod. line B:15.96 15.94 16.02 16.10 15.92 16.00 15.96 16.02
% Suppose the desired diameter of the marbles is 16 mm. Based on the 
% results you have, which production line is better in terms of meeting 
% the specification? (Hint: think in terms of the mean and the standard 
% deviation.)
% ----------------------------------------------------------------------- %

load marbles.dat
proda = marbles(1,:);
prodb = marbles(2,:);

fprintf('For the production line A, the mean is %.2f ',mean(proda));
fprintf('the median is %.2ff, the mode is %.2f ',median(proda),...
    mode(proda));
fprintf('and the standard deviation is %.2f\n', std(proda));

fprintf('For the production line B, the mean is %.2f ',mean(prodb));
fprintf('the median is %.2ff, the mode is %.2f ',median(prodb),...
    mode(prodb));
fprintf('and the standard deviation is %.2f\n', std(prodb));


%% Exercise 2
% ----------------------------------------------------------------------- %
% Write a function mymin that will receive any number of arguments, 
% and will return the minimum. Note: the function is not receiving a 
% vector; rather, all of the values are separate arguments.
% ----------------------------------------------------------------------- %

mymin(5, 4, 3, 5, -3, 10)


%% Exercise 3
% ----------------------------------------------------------------------- %
% Write a script that will do the following. Create two vectors with 20 
% random integers in each; in one the integers should range from 1 to 5, 
% and in the other, from 1 to 500 (inclusive). For each vector, would you 
% expect the mean and median to be approximately the same? Would 
% you expect the standard deviation of the two vectors to be 
% approximately the same? Answer these questions, and then use the 
% built-in functions to find the minimum, maximum, mean, median, 
% standard deviation, and mode of each. Do a histogram for each in a 
% subplot. Run the script a few times to see the variations.
% ----------------------------------------------------------------------- %
v1 = randi([1 5],1,20);
v2 = randi([1 500],1,20);

fprintf('\nVector1\n')
fprintf('The minimum value of vector 1 is: %.2f\n',min(v1))
fprintf('The maximum value of vector 1 is: %.2f\n',max(v1))
fprintf('The mean of vector 1 is: %.2f\n',mean(v1))
fprintf('The median value of vector 1 is: %.2f\n',median(v1))
fprintf('The standard deviation value of vector 1 is: %.2f\n',std(v1))
fprintf('The mode deviation value of vector 1 is: %.2f\n',std(v1))
fprintf('\nVector2\n')
fprintf('The minimum value of vector 2 is: %.2f\n',min(v2))
fprintf('The maximum value of vector 2 is: %.2f\n',max(v2))
fprintf('The mean of vector 2 is: %.2f\n',mean(v2))
fprintf('The median value of vector 2 is: %.2f\n',median(v2))
fprintf('The standard deviation value of vector 2 is: %.2f\n',std(v2))
fprintf('The mode deviation value of vector 2 is: %.2f\n',std(v2))

subplot(1,2,1)
hist(v1)
subplot(1,2,2)
hist(v2)

%% Exercise 4
% ----------------------------------------------------------------------- %
% Write a function that will return the mean of the values in a vector, 
% not including the minimum and maximum values. Assume that the 
% values in the vector are unique. It is okay to use the built-in mean
% function. To test this, create a vector of 10 random integers, each in 
% the range from 0 to 50, and pass this vector to the function.
% ----------------------------------------------------------------------- %
v = [12 32 33 14 55 36 72 38 29 10 51 42];

m1 = mean(v)
m2 = ch14e04(v)

%% Exercise 5
% ----------------------------------------------------------------------- %
% A moving average of a data set x = {x1, x2, x3, x4, …, xn} is 
% defined as a set of averages of subsets of the original data set. For 
% example, a moving average of every two terms would be 1/2 *{x1+ 
% x2, x2+ x3, x3 + x4, …, xn-1 + xn}. Write a function that will 
% receive a vector as an input argument, and will calculate and return 
% the moving average of every two elements.
% ----------------------------------------------------------------------- %

x = randi([1 10],1,20);
ch14e05(x)

%% Exercise 6
% ----------------------------------------------------------------------- %
% A median filter on a vector has a size, for example, a size of 3 
% means calculating the median of every three values in the vector. The 
% first and last elements are left alone. Starting from the second 
% element to the next-to-last element, every element of a vector vec(i) is
% replaced by the median of [vec(i-1) vec(i) vec(i+1)]. For example, if 
% the signal vector is
% signal = [5 11 4 2 6 8 5 9]
%  the median filter with a size of 3 is
% medianFilter3 = [5 5 4 4 6 6 8 9]
% Write a function to receive the original signal vector and return the 
% median filtered vector.
% ----------------------------------------------------------------------- %
signal = [5 11 4 2 6 8 5 9];
medianFilter = ch14e06(signal)

%% Exercise 7

%% Exercise 8
% ----------------------------------------------------------------------- %
% A student missed one of four exams in a course and the professor 
% decided to use the “average” of the other three grades for the missed 
% exam grade. Which would be better for the student: the mean or the 
% median if the three recorded grades were 99, 88, and 95? What if the 
% grades were 99, 70, and 77?
% ----------------------------------------------------------------------- %
grades1 = [98 88 95];
grades2 = [99 70 77];

mean1 = mean(grades1)
med1 = median(grades1)
mean2 = mean(grades2)
med2 = median(grades2)

%% Exercise 9
% ----------------------------------------------------------------------- %
% Write a function "allparts" that will read in lists of part numbers for 
% parts produced by two factories. These are contained in data files 
% called xyparts.dat and qzparts.dat. The function will return a vector of 
% all parts produced, in sorted order (with no repeats). For example, if 
% the file xyparts.dat contains
% 123 145 111 333 456 102
% and the file qzparts.dat contains
% 876 333 102 456 903 111
% calling the function would return the following:
% >> partslist = allparts
% partslist =
%  102 111 123 145 333 456 876 903
% ----------------------------------------------------------------------- %

exercise09 = allparts


%% Exercise 10
% ----------------------------------------------------------------------- %
% The set functions can be used with cell arrays of strings. Create 
% two cell arrays to store (as strings) course numbers taken by two 
% students. For example,
% s1 = {'EC 101', 'CH 100', 'MA 115'};
% s2 = {'CH 100', 'MA 112', 'BI 101'};
% Use a set function to determine which courses the students have in 
% common
% ----------------------------------------------------------------------- %
s1 = {'EC 101', 'CH 100', 'MA 115'};
s2 = {'CH 100', 'MA 112', 'BI 101'};

intersect(s1,s2)
%% Exercise 11
% ----------------------------------------------------------------------- %
% A vector v is supposed to store unique random numbers. Use set 
% functions to determine whether or not this is true.
% ----------------------------------------------------------------------- %

v = randi([1 10],1,10)
isequal(v,unique(v))
v2 = 1:10
isequal(v2,unique(v2))


%% Exercise 12 
% ----------------------------------------------------------------------- %
% A program has a vector of structures that stores information on 
% experimental data that has been collected. For each experiment, up to
% 10 data values were obtained. Each structure stores the number of 
% data values for that experiment, and then the data values. The 
% program is to calculate and print the average value for each 
% experiment. Write a script to create some data in this format and 
% print the averages.
% ----------------------------------------------------------------------- %

numvals = randi([1 10],1,3);
experiment(1).numvals = numvals(1);
experiment(1).values = randi([1 100],1,numvals(1));

experiment(2).numvals = numvals(2);
experiment(2).values = randi([1 100],1,numvals(3));

experiment(3).numvals = numvals(3);
experiment(3).values = randi([1 100],1,numvals(3));

for i = 1:3
    fprintf('For experiment %d the average value is %.2f\n',...
        i,mean(experiment(i).values));
end
fprintf('\n');

%% Exercise 13
% ----------------------------------------------------------------------- %
%  Express the following polynomials as row vectors of coefficients:
% 2x3 - 3x2 + x + 5
% 3x4 + x2 + 2x – 4
% ----------------------------------------------------------------------- %

p1 = [2 -3 1 5];
poly2sym(p1)
p2 = [3 0 1 2 -4];
poly2sym(p2)

%% Exercise 14
% ----------------------------------------------------------------------- %
% Find the roots of the equation f(x) = 0 for the following function:
%       f(x) = 3x2 - 2x - 5
% Also, create x and y vectors and plot this function in the range from -3 
% to 3 to visualize the solution.
% ----------------------------------------------------------------------- %

p = [3 -2 -5];
f = poly2sym(p);
solution = solve(f==0)
ezplot(f,[-3, 3])

%% Exercise 15
% ----------------------------------------------------------------------- %
% Evaluate the polynomial expression 3x3 + 4x2 + 2x - 2 at x = 4, 
% x = 6, and x = 8.
% ----------------------------------------------------------------------- %
clc
clear
p = [3 4 2 -2];
polyval(p,[4 6 8])

%% Exercise 17
% ----------------------------------------------------------------------- %
% Write a script that will generate a vector of 10 random integers, 
% each in the inclusive range from 0 to 100. If the integers are evenly 
% distributed in this range, then when arranged in order from lowest to 
% highest, they should fall on a straight line. To test this, fit a  
% straight line through the points and plot both the points and the line  
% with a legend.
% ----------------------------------------------------------------------- %



%% Exercise 18
% ----------------------------------------------------------------------- %
% Write a function that will receive data points in the form of x and y 
% vectors. If the lengths of the vectors are not the same, then they can’t
% represent data points so an error message should be printed. 
% Otherwise, the function will fit a polynomial of a random degree 
% through the points, and will plot the points and the resulting curve 
% with a title specifying the degree of the polynomial. The degree of the 
% polynomial must be less than the number of data points, n, so the 
% function must generate a random integer in the range from 1 to n-1 for
% the polynomial degree.
% ----------------------------------------------------------------------- %
clc
clear
t1 = 1:4;
t2 = 1:5;

d1 = randi([1 30],1,5);
d2 = randi([1 35],1,5);
ch14e18(d1,d2)
%% Exercise 19
% ----------------------------------------------------------------------- %
% Write a function mirror that will receive one input vector consisting 
% of y coordinates of data points. The function will fit a second order 
% polynomial through the points. The function will plot, on one graph, 
% the original data points (using green *s), the curve (using blue and 
% with enough points so that it is very smooth) and also “mirror image” 
% points (in red *s). The “mirror image” points are, for every x 
% coordinate, equidistant from the curve as the original data point. So, 
% if the original data point is 2 above the curve, the mirror image point  
% will be 2 below it.
% ----------------------------------------------------------------------- %


%% Exercise 20
% ----------------------------------------------------------------------- %
% Data on the flow of water in rivers and streams is of great interest to 
% civil engineers, who design bridges, and to environmental engineers, 
% who are concerned with the environmental impact of catastrophic 
% events such as flooding.
% 
% The Mystical River’s water flow rate on a particular day is shown in 
% the table below. The time is measured in hours and the water flow rate 
% is measured in cubic feet per second. Write a script that will fit 
% polynomials of degree 3 and 4 to the data and create a subplot for the 
% two polynomials. Plot also the original data as black circles in both 
% plots. The titles for the subplots should include the degree of the  
% fitted polynomial. Also, include appropriate x and y labels for 
% the plots.
%         ----------------------------------------------------------------
% Time      | 0   | 3   |   6  |   9  |  12  |  15  |  18  |  21  |  24  |
%         ----------------------------------------------------------------
%         ---------------------------------------------------------------- 
% Flow Rate | 800 | 980 | 1090 | 1520 | 1920 | 1670 | 1440 | 1380 | 1300 |
%         ----------------------------------------------------------------
%
% ----------------------------------------------------------------------- %

time = 0:3:24;
flow_rate = [800 900 1090 1520 1920 1670 1440 1380 1300];

subplot(1,2,1);
curve = polyfit(time,flow_rate,3);
y3 = polyval(curve,time);
plot(time,flow_rate,'b*',time,y3);
xlabel('Time');
ylabel('Flow Rate');
title('Order 3 Polynomial');

subplot(1,2,2);
curve = polyfit(time,flow_rate,4);
y4 = polyval(curve,time);
plot(time,flow_rate,'g*',time,y4);
xlabel('Time');
ylabel('Flow Rate');
title('Order 3 Polynomial');
%% Exercise 21
% ----------------------------------------------------------------------- %
% Write a function that will receive x and y vectors representing data 
% points. The function will create, in one Figure Window, a plot showing 
% these data points as circles and also in the top part a second-order 
% polynomial that best fits these points and on the bottom a third-order 
% polynomial. The top plot will have a line width of 3 and will be a gray 
% color. The bottom plot will be blue, and have a line width of 2. 
% ----------------------------------------------------------------------- %

x = 0:99;
y = randi([1 200],1,length(x));
ch14e21(x,y);
% repeat by running section several times until you get clearly distinct
% graphs

%% Exercise 22
% ----------------------------------------------------------------------- %
% Store the following complex numbers in variables, and print them 
% in the form a + bi.
%   3-2i
%    __ 
%  \/-3  (sqrt(-3))
% ----------------------------------------------------------------------- %

z1 = 3 - 2i
z2 = sqrt(-3)

fprintf('The first number is %.2f + %.2fi and the second number is %.2f + %.2fi\n',...
    real(z1),imag(z1),real(z2),imag(z2));

%% Exercise 23
% ----------------------------------------------------------------------- %
% Create the following complex variables
% c1 = 2 -4i;
% c2 = 5+3i;
% Perform the following operations on them:
% * add them
% * multiply them
% * get the complex conjugate and magnitude of each
% * put them in polar form
% ----------------------------------------------------------------------- %

c1 = 2 - 4i;
c2 = 5 + 3i;

% Sums
fprintf('\n Sum:\n')
c1+c2
fprintf('\n Product:\n')
c1*c2

fprintf('\n Complex Conjugates:\n')
conj(c1)
conj(c2)
fprintf('\n Magnitudes:\n')
fprintf('Magnitude of c1: %.2f\n',abs(c1))
fprintf('Magnitude of c2: %.2f\n',abs(c2))
fprintf('\n Complex Conjugates:\n')
fprintf('c1 in polar form: r=%f theta=%f\n',abs(c1),angle(c1));
fprintf('c2 in polar form: r=%f theta=%f\n',abs(c2),angle(c2));

%% Exercise 24
% ----------------------------------------------------------------------- %
% Represent the expression
% z3 -2z2 + 3–5i
% as a row vector of coefficients, and store this in a variable compoly.
% Use the roots function to solve
% z3 -2z2 + 3 – 5i = 0.
% Also, find the value of compoly when z = 2 using polyval.
% ----------------------------------------------------------------------- %
compoly = [1 -2 0 3-5i];
poly2sym(compoly)
compolyRoots = roots(compoly) 
polyval(compoly,2)

% Exercise 25 - Exercise 29 are theory

%% Exercise 30
% ----------------------------------------------------------------------- %
% Given the following colormap matrix:
% mycmap = [1 1 1; 1 0 0; 0 1 0; 0 0 1; 1 1 0];
% Write code that will generate the following (see fig in pg.549)
% 4x4 “image” matrix, using the colormap method.
% ----------------------------------------------------------------------- %
mycmap = [1 1 1; 1 0 0; 0 1 0; 0 0 1; 1 1 0];
colormap(mycmap);
immat = diag(1:4)+1;
image(immat)

%% Exercise 31
% ----------------------------------------------------------------------- %
%  Write a function myupp that will receive an integer argument n, 
% and will return an n x n upper triangular matrix of random integers.
% ----------------------------------------------------------------------- %
myupp(4)

%% Exercise 32
% ----------------------------------------------------------------------- %
% Analyzing electric circuits can be accomplished by solving sets of 
% equations. For a particular circuit, the voltages V1, V2, and V3 are 
% found through the system:
% 
% V1 = 5
% -6V1 + 10V2 - 3V3 = 0
% -V2 + 51V3 = 0
% ----------------------------------------------------------------------- %

systemMat = [1 0 0; -6 10 -3; 0 -1 51];
solMat = [5 ; 0 ; 0];

solv = inv(systemMat)*solMat

%% Exercise 33
% % ----------------------------------------------------------------------- %
%  Re-write the following system of equations in matrix form:
%  4x1 - x2 + 3x4 = 10
% -2x1 + 3x2 + x3 -5x4 = -3
%  x1 + x2 - x3 + 2x4 = 2
%  3x1 + 2x2 - 4x3 = 4
% Set it up in MATLAB and use any method to solve.
% ----------------------------------------------------------------------- %
systemMat = [4 -1 0 3 ; -2 3 1 -5 ; 1 1 -1 2 ; 3 2 -4 0];
solMat = [10 ; -3 ; 2 ; 4];
solv = inv(systemMat)*solMat

%% Exercise 34
% ----------------------------------------------------------------------- %
% Solve the simultaneous equations
%	x – y = 2 and x2 + y = 0
% using "solve". Plot the corresponding functions, 
%	y = x-2 and y = -x2, 
%  on the same graph with an x range from -5 to 5.
% ----------------------------------------------------------------------- %
syms x y
Sol = solve(x-y==2,x^2+y==0);
Sol.x
Sol.y

ezplot('y=x-2',[-5,5]);
hold on;
ezplot('y=-x^2',[-5,5]);

%% Exercise 35
% ----------------------------------------------------------------------- %
% For the following set of equations,
% 2x1 + 2x2 + x3 = 2
%  x2 + 2x3 = 1
%  x1 + x2 + 3x3 = 3
% write it in symbolic form and solve using the solve function. From the 
% symbolic solution, create a vector of the numerical (double) 
% equivalents.
% ----------------------------------------------------------------------- %
syms x y z
sol = solve(2*x+2*y+z==2,y+2*z==1,x+y+3*z==3);
v=double([sol.x, sol.y, sol.z])

%% Exercise 36
% ----------------------------------------------------------------------- %
%  The reproduction of cells in a bacterial colony is important for 
% many environmental engineering applications such as wastewater 
% treatments. The formula
% log(N) = log(N0) + t/T log(2)
% can be used to simulate this, where N0 is the original population, N is 
% the population at time t, and T is the time it takes for the 
% population to double. Use the solve function to determine the following:
% if N0 = 10^2, N = 10^8, and t = 8 hours, 
% what will be the doubling time T? Use double to get your result in hours.
% ----------------------------------------------------------------------- %
N0 = 10^2;
N = 10^8;
t = 8;
T = sym('T');
eq = log(N) - log(N0) - (t/T)*log(2);
double(solve(eq))

%% Exercise 37
% ----------------------------------------------------------------------- %
% Using the symbolic function int, find the indefinite integral of the 
% function
% 4x^2 + 3
% nd the definite integral of this function from x = -1 to x = 3.
% Also, approximate this using the trapz function.
% ----------------------------------------------------------------------- %

syms x
double(int(4*x^2+3,-1,3))

%% Exercise 38
% ----------------------------------------------------------------------- %
% Use the quad function to approximate the area under the curve
% 4x^2 + 3 from -1 to 3
% First, create an anonymous function and pass its  handle to the quad 
% function.
% ----------------------------------------------------------------------- %

fun = @(x) 4*x.^2 + 3;

quad(fun,-1,3)

%% Exercise 39
% ----------------------------------------------------------------------- %
% Use the polyder function to find the derivative of
% 2x^3 – x^2 + 4x – 5.
% ----------------------------------------------------------------------- %

coeffs = [2 -1 4 -5];
poly2sym(polyder(coeffs))

%% Exercise 40
% ----------------------------------------------------------------------- %
% Examine the motion, or trajectory, of a projectile moving through 
% the air. Assume that it has an initial height of 0, and neglect the air 
% resistance for simplicity. The projectile has an initial velocity v0, an 
% angle of departure theta 0, and is subject to the gravity constant g = 
% 9.81m/s2. The position of the projectile is given by x and y 
% coordinates, where the origin is the initial position of the projectile  
% at time t = 0. The total horizontal distance that the projectile travels  
% is called its range (the point at which it hits the ground), and the  
% highest peak (or vertical distance) is called its apex. Equations for  
% the trajectory can be given in terms of the time t or in terms of x
% and y. The position of the projectile at any time t is given by:
% x = v0 cos(theta 0) t
% y = v0 sin(theta 0) t - ½ g t^2

% For a given initial velocity v0, and angle of departure  0, describe  
% the motion of the projectile by writing a script to answer the following:
% * What is the range?
% * Plot the position of the projectile at suitable x values
% * Plot the height versus time.
% * How long does it take to reach its apex?
% ----------------------------------------------------------------------- %
g=9.81;
h0=0;
v0 = 33;
theta0 = pi/4;
t = 0;
xvec = [];
yvec = [];

x = v0 * cos(theta0) * t;
y = v0 * sin(theta0) * t - 0.5 * g * t * t;

while y >= 0
 xvec = [xvec x];
 yvec = [yvec y];
 plot(x,y)
 hold on
 t = t + 0.01;
    x = v0 * cos(theta0) * t;
    y = v0 * sin(theta0) * t - 0.5 * g * (t^2);
end
fprintf('The range is %.1f\n', xvec(end))
fprintf('The apex is %.1f\n', max(yvec))
%% Exercise 41
% ----------------------------------------------------------------------- %
% Write a GUI function that creates four random points. Radio 
% buttons are used to choose the order of a polynomial to fit through the 
% points. The points are plotted along with the chosen curve.
% ----------------------------------------------------------------------- %

buttonGUI
