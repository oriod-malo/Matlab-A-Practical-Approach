%% Chapter 14 - Advanced Mathematics

%%                          14.1 Statistical Functions

%%
% For matrices, min and max functions operate column wise. For example:

mat = [3 1 6 8 ; 2 5 8 4]

[min_val min_index] = min(mat)

%%
% Variance and standard deviation

xvals = [9 5 7 4 6];
myvariance = var(xvals)
std_deviation = std(xvals)

%%
% Median - can be determined only for data that is sorted first. If the
% vector is not sorted first he median function will sort it inside and
% give the right answer regardless
median([1 4 5 9 12]) % sorted, median is 5
median([5 4 12 1 9]) % unsorted

%%                          14.2 Set Operations

% MATLAB has several built-in functions that perform "set operations" on
% vectors and that includes "union", "intersect", "unique", "setdiff" and
% "setxor".

% For example given the following vectors find the union
v1 = 6:-1:2
v2 = 1:2:7
v1v2_union = union(v1,v2)
v1v2_intersect = intersect(v1,v2)

% "setdiff" returns all the elemens that are contained in the first vector
% but not in the second vector
v1v2_setdiff = setdiff(v1,v2)
v2v1_setdiff = setdiff(v2,v1)

% setxor receives two vectors as input arguments and returns a vector
% consisting of all the values that ARE NOT IN THE INTERSECTION of these
% two vectors. In orther words it's same as
% union(setdiff(v1,v2),setdiff(v2,v1)

v1v2_setxor = setxor(v1,v2)

% unique returns a vector of all unique values from the input
v3 = [1:5 3:6 2:8]
v3_unique = unique(v3)

%%                          14.3 Fitting Curves to Data
%%
% Simple curves are polynomials of different degrees or orders. The degree
% is the integer of the highest exponent in the expression. For example a
% cubic(degree 3) expression is one ax^3 + bx^2 + cx + d

% The roots function can be used to find the roots of an equation
% represented by a polynomial. For example, for the mathematical function:
% f(x) = 4x^3 - 2x^2 - 8x + 3, in order to solve f(x) = 0 we write:
p = [4 -2 -8 3]
p_roots = roots(p)

% The function polyval will evaluate the polynomial p at x. Can also give
% polyval in input a vector and receive in output a vector
polyval(p,1:3) % evaluate p for 1 2 and 3

%%
%
x = 2:6;
y = [65 67 72 71 63];
% polyfit(x,y,1)

coefs = polyfit(x,y,2)
curve = polyval(coefs,x)
%%
plot(x,y,'ro',x,curve,'b')
xlabel('Time')
ylabel('Temperatures')
title('Temperatures one afternoon')
axis([1 7 60 75])
%%
%Fit curves of degree 1-3 to temperature
x = 2:6;
y = [65 67 72 71 63];
morex = linspace(min(x),max(x));
maxdegree = 4; % I expanded it up to 4th degree curve which fits perfectly
for i = 1:maxdegree
   coefs = polyfit(x,y,i);
   curve = polyval(coefs,morex);
   subplot(1,maxdegree,i);
   plot(x,y,'r*',morex,curve,'b')
   xlabel('Time')
   ylabel('Temperatures')
   title(sprintf('Degree %d Curve',i))
   axis([1 7 60 75])
end

%%                          14.4 Complex Numbers
%%
z1 = 4 + 2i
z2 = sqrt(-5)
z3 = complex(3,-3)
z4 = 2 + 3j
z5 = (-4)^(1/2)

%%
real(z1)
imag(z3)
%%
fprintf('%f\n',z1)
fprintf('%f + %fi\n',real(z1),imag(z1))
disp(z1)
%%
isreal(z1)
isreal(3.3)
%%
z1==z2

complex(0,4) == sqrt(-16)

%%
zA = 3 + 4i;
zB = 2 - 3i;
sum_zAzB = ch14_addcomp(zA,zB)

zC = 1 - 2i;
prod_zAzC = zA*zC

%%
% Complex conjugate and absolute value

z1 = 3 + 4i

conj(z1)

abs(z1)
%%
% Complex equations represented as Polynomials

% polynomial z^2 + z - 3+2i can be represented by the vector:
% [ 1 1 -3+2i]
cp = [1 1 -3+2i]
roots(cp)
polyval(cp,3)

%% 
% Polar form
% A complex number can be represented also in polar form where:
% a = r*cos(theta)
% b = r*sin(theta)
% r = abs(z) = sqrt((a^2)+(b^2))
% z = r*(cos(theta)+i*sin(theta)) or 
% e^i*theta = cos(theta)+i*sin(theta)
% Let's take an example:
z1 = 3 + 4i;
r = abs(z1)
theta = angle(z1)

r*exp(i*theta)

%%
% Plotting

z = 3 + 4i;
plot(z1,'b*','MarkerSize',12)
xlabel('Real part')
ylabel('Imaginary part')
title('Complex number')
%% 14.5 Matrix Solutions to Systems of Linear Algebraic Equations
%
mymat = reshape(1:16,4,4)
mymat_T = reshape(1:16,4,4)'
dmat = diag(1:4)

%%
mymat_upperTriangular = triu(mymat)
mymat_lowerTriangular = tril(mymat)
%%
a = [1 2; 2 2]
ainv = inv(a)
a*ainv

%%
% Matrix augmentation - adding column(s) to the original matrix. In MATLAB,
% matrix augmentation can be accomplished using square brackets to
% concentrate the two matrices. The square matrix A is concatenated with an
% identity matrix which has the same as the matrix A

A = [1 3 7; 2 5 4; 9 8 6]
[A eye(size(A))]
%%
% Check page 533/534 for this
A = [4 -2 1; 1 1 5; -2 3 -1];
b = [7; 10; 2];
x = inv(A)*b

%%
% 
a = [1 3 0; 2 1 3; 4 2 3];
b = [1 6 3]';
ab = [a b];
rref(ab) % reducing [A|b] to [I|b']
x = ans(:,end) % x1 = -2, x2 = 1, x3 = 3
%%
% Finding a matrix inverse by reducing an augmented matrix
a =[1 3 0; 2 1 3; 4 2 3];
rref([a eye(size(a))])

%%                          14.6 Symbolic mathematics
%%
clear
clc
%%
a = sym('a');
a+a
%%
b = str2sym('x^2');
c = str2sym('x^4');
c/b
b^3
b+str2sym('4*x^2')
c+str2sym('4*x^2')
%%
syms x y z
%%
myp = [1 2 -4 3];
poly2sym(myp)
%%
mypoly = [2 0 -1 0 5];
poly2sym(mypoly)
sym2poly(ans)
%%
% There are several functions that work with symbolic expressions and
% simplify the terms. Not all expressions can be simplified, but the
% 'simplify' function does whatever it can to simplify expressions,
% including gathering like terms. For example:

x = sym('x');
myexpr = cos(x)^2 + sin(x)^2
simplify(myexpr)

%%
% The functions 'collect','expand', and 'factor' work with polynomial
% expressions. The 'collect' function collects coefficients, such as the
% following:

x = sym('x');
collect(x^2 + 4*x^3 + 3*x^2)

%%
% The 'expand' function will multiply out terms and 'factor' will do the
% reverse

expand((x+2)*(x-1))
factor(ans)

%%
% The 'subs' function will substitute a value for symbolic variable in an
% expression

myexp = x^3 + 3*x^2 - 2
subs(myexp,3)

%%
% If there are multiple variables in the expression, one will be chosen by
% default for the substitution (in this case, x) or the variable for which
% the substitution is to be made can be specified:
syms a b x
varexp = a*x^2 + b*x;
subs(varexp,3)
subs(varexp,'a',3)

%%
1/3 + 1/2
sym(1/3 + 1/2)

%%
% The "pretty" function will display symbolic expressions using exponents.
% For example:

b = str2sym('x^2')
pretty(b)

%%
% The function "ezplot" will draw a two-dimensional plot in the x-range
% from -2pi to 2pi
ezplot('x^3 + 3*x^2 - 2')
%%
ezplot('cos(x)',[0 pi])
ezplot

%%
% Solving Equations - the function "solve" solves an equation and returns
% the solution(s) as symbolic expressions. The solution can be converted
% to numbers using any numeric function such as double.

x = sym('x');
solve(2*x^2 + x == 6)
double(ans)

%%
syms x y z
solve(4*x-2*y+z==7,x+y+5*z==10,-2*x+3*y-z==2)
x = ans.x
y = ans.y
z = ans.z
double([x y z])

%%                          14.7 Calculus: Integration and Differentiation
%%
clear
clc
%%
% Function "trapz" will implement the trapezoidal rule in matlab. Vectors
% with the values of x and y=f(x) are passed to it. For example:
f = @ (x) 3*x.^2 - 1;

x = [2 4];

y = f(x); % y = f(x) = 3x^2 -1

trapz(x,y)
%%
help quad
%%
quad(f,2,4)
%%
% MATLAB has a function polyint which will find the integral of a
% poynomial. For example, for the polynomial 3x^2 + 4x -4, which would be
% represented by vector [3 4 -4] the integral is found by:
origp = [3 4 -4];
intp = polyint(origp)

%%
% Differentiation
% MATLAB has a function "polyder" which will find the derivative of a
% polynomial. For example, for the polynomial x^3 + 2x^2 -4x + 3 which
% would be represented by the vector [1 2 -4 3] the derivative is found by:

origp = [1 2 -4 3];
diffp = polyder(origp)

% The function "polyval" can  then be used to find the derivative for
% certain values as for x = 1,2 and 3
polyval(diffp,1:3)
%%
f = @ (x) x.^3 + 2*x.^2 - 4*x + 3;
x = 0.5 : 3.5
y = f(x)
diff(y)
diff(x)
diff(y)./diff(x)
%%
% There are several functions in the Symbolic Math Toolbox to perform
% calculus operations symbolically (diff to differentiate and int to
% integrate). To learn about the int function, for example:
help sym/int
%%
% to find the indefinite integral of the function f(x) = 3x^2 -1
syms x
int(3*x^2-1)

%%
%To find the definite integral of this function from 2 to 4 then:
int(3*x^2 - 1, 2, 4)

%%w
% Limits can be found using the limit function. For example the difference
% equation:
syms x h
f = @ (x) x.^3 + 2.*x.^2 - 4.*x + 3;
limit((f(x+h)-f(x))/h,h,0)

%%
% To differentiate, instead of the anonymous function we write it
% symbolically:
syms x f
f = x^3 + 2*x^2 - 4*x + 3

diff(f)