%% Chapter 12 - Advanced Plotting Techniques

%% subplottypes.m - display "plot","bar","area","stem"
% Subplot to show plot types 

year = 2016:2020;
pop = [0.9 1.4 1.7 1.3 1.8];
subplot(2,2,1)
plot(year,pop)
title('plot')
xlabel('Year')
ylabel('Population (mil)')
subplot(2,2,2)
bar(year,pop)
title('bar')
xlabel('Year')
ylabel('Population (mil)')
subplot(2,2,3)
area(year,pop)
title('area')
xlabel('Year')
ylabel('Population (mil)')
subplot(2,2,4)
stem(year,pop)
title('stem')
xlabel('Year')
ylabel('Population (mil)')

%% loopsubplot - produce the same but quickly with a loop

year = 2016:2020;
pop = [0.9 1.4 1.7 1.3 1.8];
titles = {'plot','bar','area','stem'};
for i = 1:4
    subplot(2,2,i)
    eval([titles{i} '(year,pop)'])
    title(titles{i})
    xlabel('Year')
    ylabel('Population (mil)')
end
%% Bar vs Stacked Bar Charts
groupages = [8 19 43 25; 35 44, 30, 45];
%%
bar(groupages)
xlabel('Group')
ylabel('Ages')
%%
bar(groupages,'stacked')
xlabel('Group')
ylabel('Ages')

%% Histogram 

quizzes = [10 8 5 10 10 6 9 7 8 10 1 8];
histogram(quizzes)
xlabel('Grade')
ylabel('#')
title('Quiz Grades')

%% Pie Chart
pie([11 14 8 3 1])

% 11 is 30% of the sum, 14 is 38% and so forth
% pie([11 14 8 3 1],{'A','B','C','D','F'}) will replace percentages w letters
%%
gradenums = [11 14 8 3 1];
letgrades = {'A','B','C','D','F'};
which = (gradenums==max(gradenums))
pie(gradenums,which,letgrades)
title(strcat('Largest fraction of grades: ',letgrades(which)))
%% Log Scales

subplot(1,2,1)
plot(logspace(1,10))
title('plot')
subplot(1,2,2)
semilogy(logspace(1,10))
title('semilogy')

%  semilogx Semi-log scale plot.
%     semilogx(...) is the same as PLOT(...), except a
%     logarithmic (base 10) scale is used for the X-axis.
% 
%  semilogy Semi-log scale plot.
%     semilogy(...) is the same as PLOT(...), except a
%     logarithmic (base 10) scale is used for the Y-axis.

%% Animation
%%
x = -2*pi: 1/100 : 2*pi;
y = sin(x);
comet(x,y)
%%
% show a movie of the sin function
clear

x = -2*pi: 1/5 : 2*pi;
y = sin(x);
n = length(x);

for i = 1:n
    plot(x(i),y(i),'r*')
    axis([min(x)-1 max(x)+1 min(y)-1 max(y)+1])
    M(i) = getframe;
end
movie(M)
%% Customizing plots, barwidth

year = 2016:2020;
pop = [0.9 1.4 1.7 1.3 1.8];

for i = 1:4
    subplot(1,4,i)
    %width will be 0.6, 0.8, 1, 1.2
    barh(year,pop,0.4+i*.2)
    title(sprintf('Width = %.1f',0.4+i*.2))
    xlabel('Population (mil)')
    ylabel('Year')
end

%% 3D Plots

x = 1:5;
y = [0 -2 4 11 3];
z = 2:2:10;
plot3(x,y,z,'b*')
grid
xlabel('x')
ylabel('y')
zlabel('z')
title('3D plot')
%%
y= 1:6
z = [33 11 5 9 22 30];
bar3(y,z)
xlabel('x')
ylabel('y')
zlabel('z')
title('3D bar')
%%
mat = spiral(5)
bar3(mat)
xlabel('x')
ylabel('y')
zlabel('z')
title('3D spiral')
%%
pie3([3 10 5 2])
%% 
% Mesh Sphere
[x y z] = sphere(15);
size(x)
mesh(x,y,z)
title('Mesh of Sphere')
%%
% Surf of Sphere
[x y z] = sphere(15);
sh = surf(x,y,z)
title('Surf of Sphere')
sh.FaceAlpha=0.5; % toggle transparency
colorbar
%%
% meshgrid
[x y] = meshgrid(-2*pi: 0.1: 2*pi);
z = cos(x) + sin(y);
surf(x,y,z)
title('cos(x)+sin(y)')
xlabel('x')
ylabel('y')
zlabel('z')
%% Core Graphics Objects
% Line
% Text
% Rectangle
% Patch
% Image

%%
x = -2*pi : 1/5 : 2*pi
y = sin(x)
hl = line(x,y,'LineWidth',6,'Color',[0.5 0.5 0.5])
%%
figure('Color',[1 1 1])
pts = 0:0.01:2*pi;
xcir = cos(pts);
ycir = sin(pts);
line(xcir,ycir,'LineStyle',':','LineWidth',2,'Color','r')
axis square
axis off
%%
x = -4:0.2:4;
y = sin(x)
hp = line(x,y,'LineWidth',3);
thand = text(1,0,'Sin (\pi) \rightarrow')
set(thand,'BackgroundColor',[0.9 0.9 0.9],'EdgeColor',[1 0 0])
%%

rh = rectangle('Position', [0.2, 0.2, 0.5, 0.8], 'Curvature', [0.3 0.3]);

axis([0 1.2 0 1.2])
set(rh,'LineWidth',3,'LineStyle',':');
%%
x = [0 1 0.5];
y = [0 0 1];
hp = patch(x,y,'r');
hp.Vertices
%%
mypatch.Vertices = [...
    0 0
    2 0
    1 2
    1 -2
    3 1];
mypatch.Faces = [
    1 2 3
    2 3 5
    1 2 4];

mycolors = [0 0 1; 0 1 1; 1 1 0];
patchhan = patch(mypatch, 'FaceVertexCData',mycolors, 'FaceColor','flat');

%%
polyhedron.Vertices = [...
    0 0 0
    1 0 0
    0 1 0
    0.5 0.5 1];
polyhedron.Faces = [...
    1 2 3
    1 2 4
    1 3 4
    2 3 4];
pobj = patch(polyhedron, ...
    'FaceColor', [0.8, 0.8, 0.8],...
    'EdgeColor', 'black');
% don't forget to rotate

%% Plotting from a function

anfn = @ (x) x.^3;
x=1:2:9;
rca={'bar','area','plot'};
ch12_plotxywithcell(x,anfn,rca)