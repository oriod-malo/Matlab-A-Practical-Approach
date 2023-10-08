%% Chapter 12 Advanced Plotting Techniques Excercises
%% Exercise 1
% Create a data file that containing 10 numbers. Write a script that 
% will load the vector from the file, and use subplot to do an area plot 
% and a stem plot with these data in the same Figure Window (Note: a 
% loop is not needed). Prompt the user for a title for each plot.

% Note, I'm saving the "load <filename>" and creating the numbers randomly
% load <filename>.dat
dataArray = randi([1 10],1,10);
subplot(1,2,1);
area(dataArray);
title('Area')
subplot(1,2,2);
stem(dataArray);
title('Stem')

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

%% Exercise 2
%  Write a script that will read x and y data points from a file, and will 
% create an area plot with those points. The format of every line in the 
% file is the letter ‘x’, a space, the x value, space, the letter ‘y’, space, 
% and the y value. You must assume that the data file is in exactly that 
% format, but you may not assume that the number of lines in the file is 
% known. The number of points will be in the plot title. The script loops 
% until the end of file is reached, using fgetl to read each line as a string.
% For example, if the file contains the following lines,
% x 0 y 1
% x 1.3 y 2.2
% x 2.2 y 6
% x 3.4 y 7.4
% when running the script, the result will be as shown in the Figure.
% 

x = [];
y = [];

fid = fopen('xandypts.dat');
if fid == -1
    disp('File open not successful')
else
    while  ~feof(fid)
        aline = fgetl(fid);
        [letter, rest] = strtok(aline);
        [xval, rest] = strtok(rest);
        [letter, rest] = strtok(rest);
        yval = strtok(rest);
        x = [x str2num(xval)];
        y = [y str2num(yval)];
    end
    
    area(x,y)
    title(sprintf('%d data points',length(x)))
    fclose(fid);    
end

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

%% Exercise 3
% Do a quick survey of your friends to find out who prefers cheese 
% pizza, pepperoni, or mushroom (no other possibilities; everyone must 
% pick one of those three choices). Draw a pie chart to show the 
% percentage favoring each. Label the pieces of this pizza pie chart!

cheesePizza = randi([1 10]);
pepperoniPizza = randi([1 10]);
shroomPizza = randi([1 10]);;

pie([cheesePizza pepperoniPizza shroomPizza])

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

%% Exercise 4

% The number of faculty members in each department at a certain 
% College of Engineering is:
% ME 22 % BM 45 % CE 23 % EE 33
% Experiment with at least 3 different plot types to graphically depict this
% information. Make sure that you have appropriate titles, labels, and 
% legends on your plots. Which type(s) work best, and why?

ME = 22; 
BM = 45;
CE = 23;
EE = 33;

subplot(1,3,1);
bar([ME, BM, CE, EE]);
xlabel('Faculty');
ylabel('n° Members');
%legend('ME','BM','CE','EE');


subplot(1,3,2);
pie([ME BM CE EE]);
xlabel('Faculty');
ylabel('n° Members');
legend('ME','BM','CE','EE');


subplot(1,3,3);
stem([ME BM CE EE]);
xlabel('Faculty');
ylabel('n° Members');
%legend('ME','BM','CE','EE');

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

%% Exercise 5

% Experiment with the comet function: try the example given when 
% help comet is entered and then animate your own function using 
% comet.

%first run help comet
        t = -pi:pi/200:pi;
        comet(t,tan(sin(t))-sin(tan(t)))
        
%%
x = -2*pi:1/100:2*pi;
comet(sin(2*x)+2*cos(x)+1)

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

%% Exercise 6
% 
%  Experiment with the comet3 function: try the example given when 
% help comet3 is entered and then animate your own function using 
% comet3.

%first run help comet
        t = -pi:pi/500:pi;
        comet3(sin(5*t),cos(3*t),t)
%%
t = 1:.1:200;
comet3(cos(t),t+1,sin(t+2))

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

%% Exercise 7
%  Experiment with the scatter and scatter3 functions.
        t = -pi:pi/200:pi;
        scatter(t,tan(sin(t))-sin(tan(t)))
%%
t = 1:.1:200;
scatter3(cos(t),t+1,sin(t+2))

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

%% Exercise 8

% Use the cylinder function to create x, y, and z matrices and pass them to the surf
% function to get a surface plot. Experiment with different arguments to cylinder.

[x,y,z] = cylinder(3);
subplot(1,3,1)
surf(x,y)
subplot(1,3,2)
surf(x,z)
subplot(1,3,3)
surf(y,z)

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

%% Exercise 9
% Experiment with contour plots
       %[c,h] = contour3(peaks);
       [c,h] = contour3(peaks);
       clabel(c,h)
       
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

%% Exercise 10
% The electricity generated by wind turbines annually in kilowatt-hours
% per year is given in a file. The amount of electricity is 
% determined by, among other factors, the diameter of the turbine blade 
% (in feet) and the wind velocity in mph. The file stores on each line the 
% blade diameter, wind velocity, and the approximate electricity 
% generated for the year. For example,
% 5 5 406
% 5 10 3250
% 5 15 10970
% 5 20 26000
% 10 5 1625
% 10 10 13000
% 10 15 43875
% 10 20 104005
% Create a file in this format, and determine how to graphically display 
% this data.

load turbine.dat

stem3(turbine(:,1),turbine(:,2),turbine(:,3))
xlabel('Blade Diameter');
ylabel('Wind velocity');
zlabel('kw-h per year')

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

%% Exercise 11
% Create an x vector, and then two different vectors (y and z) based 
% on x. Plot them with a legend. Use help legend to find out how to 
% position the legend itself on the graph, and experiment with different 
% locations.

x = [9 6 4 3 6 7 1 12 5];
y = x.*3;
z = x.^2;

hold on
plot(x,y,'r*')
plot(x,z,'b*')
legend('3x','x^2','Location','NorthWest')

%% Exercise 12
%
% Create an x vector that has 30 linearly spaced points in the range 
% from -2pi to 2pi, and then y as sin(x). Do a "stem" plot of these points, 
% and store the handle in a variable. Use get to see the properties of the
% stem plot, and then set to change the face color of the marker. Also 
% do this using the dot operator.


x = linspace(-2*pi,2*pi,30);
y = sin(x);
handleVar = stem(x,y);
xlabel('x');
ylabel('sin(x)');
get(handleVar);
set(handleVar,'Marker','diamond');
set(handleVar,'MarkerFaceColor','red');
set(handleVar,'MarkerEdgeColor','black');

%% Exercise 13
%
% When an object with an initial temperature T is placed in a 
% substance that has a temperature S, according to Newton’s law of 
% cooling in t minutes it will reach a temperature Tt using the formula:
% Tt = S + (T - S)*e^(-kt)
% where k is a constant value that depends on properties of the object.
% For an initial temperature of 100 and k = 0.6, graphically display the
% resulting temperatures from 1 to 10 minutes for two different
% surrounding temperatures: 50 and 20. 
% Use the plot function to plot two different lines for these surrounding
% temperatures, and store the handle in a variable. Note that two function  
% handles are actually returned and stored in a vector. Change the line  
% width of one of the lines.

T = 100;
k = 0.6;
S1 = 50;
S2 = 20;
x=linspace(1,10,600); % 10 min = 600s
y1 = S1 + (T-S1)*exp(-k.*x); % exp(x) = e^x
y2 = S2 + (T-S2)*exp(-k.*x);

handleVar=plot(x,y1,x,y2);
xlabel('Time');
ylabel('Temperature');
legend('50°','20°');
set(handleVar(2),'LineWidth',2);

%% Exercise 14
%
% Write a script that will draw the line y=x between x=2 and x=5, 
% with a random line width between 1 and 10.
x = [2 5];
y = x;
handleVar=plot(x,y);
set(handleVar,'LineWidth',randi([1 10]));

%% Exercise 15
% 
% Write a script that will plot the data points from y and z data 
% vectors, and store the handles of the two plots in variables yhand and 
% zhand. Set the line widths to 3 and 4 respectively. Set the colors and 
% markers to random values (create strings containing possible values 
% and pick a random index).

y=randi([1 100],1,20);
z=randi([1 100],1,20);
subplot(1,2,1)
handleY = plot(y);
subplot(1,2,2)
handleZ = plot(z);

colortypes = 'bgrcmyk';
markertypes = '.ox+*sd';
%set(handleY,'LineWidth',3); % temporary disable the width set so markers
%and colors can be seen better
%set(handleZ,'LineWidth',4);
set(handleY,'Color',colortypes(randi(length(colortypes))));
set(handleY,'Marker',markertypes(randi(length(markertypes))));
set(handleZ,'Color',colortypes(randi(length(colortypes))));
set(handleZ,'Marker',markertypes(randi(length(markertypes))));

%% Exercise 16
%
% Write a function "plotexvar" that will plot data points represented by 
% x and y vectors which are passed as input arguments. If a third 
% argument is passed, it is a line width for the plot, and if a fourth 
% argument is also passed, it is a color. The plot title will include the 
% total number of arguments passed to the function. Here is an example
% of calling the function and the resulting plot:

x = 1:1:20;
y = 2*x;
plotexvar(x,y,3,'r');

%% Exercise 17
% A file "houseafford.dat" stores on its three lines years, median 
% incomes and median home prices for a city. The dollar amounts are in 
% thousands. For example, it might look like this:
% 2004 2005 2006 2007 2008 2009 2010 2011
% 72 74 74 77 80 83 89 93
% 250 270 300 310 350 390 410 380
% Create a file in this format, and then load the information into a 
% matrix. Create a horizontal stacked bar chart to display the 
% information, with an appropriate title. Note: use the ‘XData’ property 
% to put the years on the axis as shown in Figure 11.35.

load houseafford.dat;
handleVar = barh(houseafford(2:3,:)','stacked');
set(handleVar, 'XData', houseafford(1,:));
xlabel('$');
ylabel('Year');

%% Exercise 18
% 
% Write a function that will plot cos(x) for x values ranging from –pi 
% to pi in steps of 0.1, using black *’s. It will do this three times across in
% one Figure Window, with varying line widths (Note: even if individual 
% points are plotted rather than a solid line, the line width property will 
% change the size of these points.). If no arguments are passed to the 
% function, the line widths will be 1, 2, and 3. If, on the other hand, an 
% argument is passed to the function, it is a multiplier for these values 
% (e.g., if 3 is passed, the line widths will be 3, 6, and 9). The line widths 
% will be printed in the titles on the plots.
ch12_e18(2)

%% Exercise 19

% Create a graph, and then use the text function to put some text on 
% it, including some \specchar commands to increase the font size and to
% print some Greek letters and symbols.

x = -2*pi:.1:2*pi;
y = sin(x);
hnd = line(x,y);
thand = text(-4,0,'Sine that goes from -2\pi to 2\pi')
set(thand,'FontSize',11);

%% Exercise 20
% Create a rectangle object, and use the axis function to change 
% the axes so that you can see the rectangle easily. Change the Position,
% Curvature, EdgeColor, LineStyle, and LineWidth. Experiment with 
% different values for the Curvature.
subplot(1,2,1);
rctA = rectangle('Position', [0, 0, 1, 1],...
    'Curvature', [0.3 0.3], 'EdgeColor', 'g',...
    'LineStyle', ':', 'LineWidth',2);
subplot(1,2,2);
rctB = rectangle('Position', [1, 1, 2, 2],...
    'Curvature', [0.5 0.5], 'EdgeColor', 'r',...
    'LineStyle', '-.', 'LineWidth',3);


%% Exercise 21

% Write a script that will display rectangles with varying curvatures 
% and line widths, as shown in the Figure. The script will, in a loop, 
% create a 2 by 2 subplot showing rectangles. In all, both the x and y 
% axes will go from 0 to 1.4. Also, in all, the lower left corner of the 
% rectangle will be at (0.2, 0.2), and the length and width will both be 1. 
% The line width, i, is displayed in the title of each plot. The curvature 
% will be [0.2, 0.2] in the first plot, then [0.4, 0.4], [0.6,0.6],  
% and finally [0.8,0.8].

for i = 1:4
   subplot(2,2,i);
   rct(i) = rectangle('Position', [0.2, 0.2, 1, 1],...
       'LineWidth', i, 'Curvature', [0.2*i 0.2*i]);
   axis([0 1.4 0 1.4])
   title(sprintf('Line Width is %d\n'),i);
end

%% Exercise 22

% Write a script that will start with a rounded rectangle. Change both
% the x and y axes from the default to go from 0 to 3. In a for loop, 
% change the position vector by adding 0.1 to all elements 10 times (this 
% will change the location and size of the rectangle each time). Create a 
% movie consisting of the resulting rectangles. The final result should 
% look like the plot shown in the Figure.

position = [0.2, 0.2, 0.4,0.4];
rct = rectangle('Position',position,'Curvature',[0.7 0.7],...
    'EdgeColor','b');
axis=([0 3 0 3]);
for i = 1:10
    position = position + 0.1;
    rectangle('Position',position,'Curvature',[0.7 0.7],...
    'EdgeColor','b');
    axis=([0 3 0 3]);
    M(i)=getframe;
end
movie(M);


%% Exercise 23
% A hockey rink looks like a rectangle with curvature. Draw a hockey 
% rink, as in the Figure.

%I changed a bit the size so it's proportional to 200x85 ft 
%It won't come out in the same coordinates as in the book:
position = [0, 0, 20, 8.5]; 


hockeyRink = rectangle('Position',position,'Curvature',[0.35 0.35],...
    'EdgeColor','k');
axis=([0 21 0 9]);
line([10 10],[0 8.5],'Color','r')


%% Exercise 24

% Write a script that will create a two-dimensional patch object with 
% just three vertices and one face connecting them. The x and y 
% coordinates of the three vertices will be random real numbers in the 
% range from 0 to 1.
% 
% The lines used for the edges should be black with a 
% width of 3, and the face should be grey. The axes (both x and y) should
% go from 0 to 1. For example, depending on what the random numbers 
% are, the Figure Window might look like the Figure.

object2d.Vertices=[...
    rand rand rand
    rand rand rand
    rand rand rand];

object2d.faces = [1 2 3];
pobj = patch(object2d,...
    'FaceColor',[0.8 0.8 0.8],'EdgeColor','k',...
    'LineWidth',3);

%% Exercise 25
% Using the patch function, create a black box with unit dimensions 
% (so, there will be eight vertices and six faces). Set the edge color to 
% white so that when you rotate the figure, you can see the edges.

% Draws a black box with unit dimensions
% set up the 8 vertices
polyhedron.vertices = [...
0 0 0
1 0 0
1 1 0
0 1 0
0 0 1
1 0 1
1 1 1
0 1 1];
% connect the 6 faces
polyhedron.faces = [...
 1 2 3 4
 5 6 7 8
 1 2 6 5
 1 4 8 5
 2 3 7 6
 3 4 8 7];
pobj = patch(polyhedron, ...
'FaceColor',[0 0 0],...
'EdgeColor','white');

%% Exercise 26

% Write a function plotline that will receive x and y vectors of data 
% points, and will use the line primitive to display a line using these 
% points. If only the x and y vectors are passed to the function, it will use
% a line width of 5; otherwise, if a third argument is passed, it is the line 
% width.
plotline([0 1],[2 4])
%%
plotline([0 2], [3 7], 1)