%% Chapter 11 - Introduction to OOP and Graphics - Part 1 (Theory)

%% 11.1 Object-Oriented Programming (OOP)

%% 11.2 Using Objects with Graphics and Plot Properties

f = figure;
f
f.Color
%%
x = -2*pi:1/5:pi;
y = sin(x);
hl = plot(x,y)

%% 11.3 User-Defined Classes and Objects

% Classes are defined using the keyword "classdef". The class definition is
% organized by blocks and typically at a minimum contains properties (the
% data) using the keyword "properties" and methods (the functions that act
% on the data) using the keyword "methods". One special case of a method is
% a constructor function taht initializes the properties. Class definitions
% are stored in code files with the same name as the class; the constructor
% function also is given the same name. Every block begins with the 
% keyword and ends with "end".
%  
% (File is saved as MyClassName.m)
% classdef MyClassName
%     properties
%         prop1
%         prop2
%     end
%     
%     methods % relative to "properties"
%         
%         % Constructor function
%         function obj = MyClassName(val1, val2)
%             obj.prop1 = val1;
%             obj.prop2 = val2;
%         end
%         %other methods that operate on properties
%     end % relative to "methods"

% end % relative to "classdef"

%%
objA = SimpleClass
objB = SimpleClass(4,9)

rect1 = Rectangle(3,5)
rect2 = rect1;

rect2.wid = 11
%%
mybox = Box(2,5,8)

%% 11.3 Practice Problem

% The gt, lt, le and ge functions are overloaded in handle classes for the
% operators >, <, <= and >= respectively. Creating a handle class with
% multiple properties, instantiate at least two objects fo this class and
% design experiments with the objects to determine if these overloaded
% operators are implemented memberwise or not.

% Will create both a value class ch11_valClass and a handle class
% ch11_hanClass in order to illustrate the differences.
%%
va = ch11_valClass(3);
vb = ch11_valClass(5);
vmult = timestwo(vb)
vb
%%
timesthree(vb) %% after the timesthree stops execution we have nothing

%% 
% handle class time
ha = ch11_hanClass(12);
hb = ch11_hanClass(7);
hmult2 = timestwo(hb)
hb
ha
%%
timesthree(hb)
ha
hb

% In this case, the timesthree function changes the value of x in "hb"
%% 11.3.4 Property definition blocks

% The behavior of, and access to, classes, properties and methods can be
% controlled by what are called "attributes". The attributes are sprecified
% in parentheses in the first line of any block. There are three types of
% access to properties:
% 1.Public Access - access is possible from anywhere, this is default
% 2.Private Access - access is possible only by methods in this class
% 3.Protected Access - access is possible only by methods in this class or
% in any of its subclasses

% The attributes that control the access to the properties are:
% 1.GetAccess - read access, which means the ability to determine the values
% of properties
% 2.SetAccess - write access, which means the ability to initialize or
% modify the values of properties
% 3.Access -  both read and wrtie access

% Methods also have several types of attributes, three related to access:
% 1.public - access is possible from anywhere and this is the default
% 2.private - access is possible only by methods in this class
% 3.protected - access is possible only by methods in this class or any of
% its subclasses
% Besides Access, other method attributes include the following, all of
% which are the type "logical" and have a default value "false":
% Abstract - if true, there is no implementation of the method
% Hidden - if true, the method is not seen in lists of methods
% Sealed - if true, the method cannot be redefined in a subclass
% Static - if true, the method is a static method which means that it's not
% called by any particular object; static methods are the same for all
% objects in the class
% Abstract - if true, there is no 