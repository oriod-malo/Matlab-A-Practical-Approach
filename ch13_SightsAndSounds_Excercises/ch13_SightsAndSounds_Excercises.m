%% Chapter 13 - Sights and Sounds
%% Exercise 1 (my solution)
%  Create a custom colormap for a sphere that consists of the first 25 
% colors in the default colormap jet. Display sphere(25) with a colorbar.
% 

[x y z] = sphere(25);
surf(x,y,z)
colormap(jet(25)) %how i understand the requirement
colorbar

%% Exercise 1 (book solution)
cmap = colormap;
cmap = cmap(1:25,:);
colormap(cmap)
[x, y, z] = sphere(25);
surf(x,y,z)
colorbar

%% Exercise 2
% Write a script that will create the image seen in the Fig.13.39 
% using a colormap.

mat = zeros(2,2,3);
mat(1,1,1) = 255;
mat(1,1,2) = 255;
mat(1,1,3) = 255;

mat(1,2,2) = 200;
mat(2,1,1) = 200;
mat(2,2,3) = 200;
mat = uint8(mat);
image(mat);


%% Exercise 3
% Write a function *numimage* that will receive two input arguments: a 
% colormap matrix, and an integer “n”; the function will create an image 
% that shows n “rings” of color, using the first n colors from the 
% colormap.
% For example, if the function is called as follows:
% >> cm = [0 0 0; 1 0 0; 0 1 0; 0 0 1; ...
% 1 1 0; 1 0 1; 0 1 1];
% >> numimage(cm,5)
% Each “ring” has the thickness of one pixel. In this case, since n was 5, 
% the image shows the first 5 colors from the colormap: the outermost 
% ring is the first color, the next ring is the second color, and the 
% innermost pixel is the fifth color. Note that since n was 5, the image 
% matrix is 9*9.

cm = [0 0 0; 1 0 0; 0 1 0; 0 0 1; 1 1 0; 1 0 1; 0 1 1];
numimage(cm,5)

%% 
% test to analyze
cm = [0 0 0; 1 0 0; 0 1 0; 0 0 1; 1 1 0; 1 0 1; 0 1 1; 1 1 1];
    colormap(cm)
    num = 5;
    cols = num * 2 - 1;
    mat = ones(cols);
    for i = 2:num
         cols = cols - 1;
         mat(i:cols,i:cols) = i;
    end
    image(mat)
colorbar

%% Exercise 4
% Write a script that would produce the 50 x 50 “image” seen in Fig.13.41
% using the RGB, or true color method (NOT the colormap method).

squaresImage = zeros(50,50,3);
squaresImage(10:30,10:30,2)=255;
squaresImage(20:40,20:40,1)=255;
squaresImage = uint8(squaresImage);
image(squaresImage);

%% Exercise 5
%
%  A script rancolors displays random colors in the Figure Window as 
% shown in Figure 13.42
% It starts with a variable nColors which is the
% number of random colors to display (e.g., below this is 10). It then 
% creates a colormap variable mycolormap, which has that many random
% colors, meaning that all three of the color components (red, green, and
% blue) are random real numbers in the range from 0 to 1. The script 
% then displays these colors in an image in the Figure Window.

% EDIT: I made "rancolors" a function instead of a script so that the
% nColors be controllable from input

rancolors(10)

%% Exercise 6
% Write a script that will create a colormap that just has two colors: 
% white and black. The script will then create a 50x50 image matrix in 
% which each element is randomly either white or black. In one Figure 
% Window, display this image on the left. On the right, display another 
% image matrix in which the colors have been reversed (all white pixels 
% become black and vice versa). 

ch13e06

%% Exercise 7 (my solution)
% Write a script that will show shades of green and blue. First, create 
% a colormap that has 30 colors (ten blue, ten aqua, and then ten green).
% There is no red in any of the colors. The first ten rows of the colormap 
% have no green, and the blue component iterates from 0.1 to 1 in steps 
% of 0.1. In the second ten rows, both the green and blue components 
% iterate from 0.1 to 1 in steps of 0.1. In the last ten rows, there is no 
% blue, but the green component iterates from 0.1 to 1 in steps of 0.1. 
% Then, display all of the colors from this colormap in a 3 x 10 image 
% matrix in which the blues are in the first row, aquas in the second, and 
% greens in the third, as follows (the axes are the defaults). Do not use 
% loops.
colorsScale = linspace(0.1,1,10);
    mat = zeros(3,10,3);
    mat(1,:,3) = mat(1,:,3)+colorsScale;
    mat(2,:,2) = mat(2,:,2)+colorsScale;
    mat(2,:,3) = mat(2,:,3)+colorsScale;
    mat(3,:,2) = mat(3,:,2)+colorsScale;
    image(mat)
    %% Exercise 7 (book solution)
    colors = zeros(30,3);
    vec = repmat(0.1:.1:1,1,2)';
colors(11:end,2) = vec;
colors(1:20,3) = vec;
colormap(colors);
mat = reshape(1:30,10,3)';
image(mat)

%% Exercise 8
%  A part of an image is represented by an n x n matrix. After 
% performing data compression and then data reconstruction techniques,
% the resulting matrix has values that are close to but not exactly equal 
% to the original matrix. For example, the following 4 x 4 matrix variable 
% orig_im represents a small part of a true color image, and fin_im
% represents the matrix after it has undergone data compression and 
% then reconstruction.
%         orig_im =
%          156 44 129 87
%          18 158 118 102
%          80 62 138 78
%          155 150 241 105
%         fin_im =
%          153 43 130 92
%          16 152 118 102
%          73 66 143 75
%          152 155 247 114
%  Write a script that will simulate this by creating a square matrix of 
% random integers, each in the range from 0 to 255. It will then modify 
% this to create the new matrix by randomly adding or subtracting a 
% random number (in a relatively small range, say 0 to 10) from every 
% element in the original matrix. Then, calculate the average difference 
% between the two matrices.

orig_mat = randi([0 255],4);
[r c] = size(orig_mat);
diff =  randi([-10 10],r,c);
fin_mat = orig_mat + diff;

%%
avediff = mean(mean(abs(diff)));
fprintf('The average difference is: %f\n',avediff);

%% Exercise 9
% 
% It is sometimes difficult for the human eye to perceive the 
% brightness of an object correctly. For example, in Fig.13.45, the 
% middle of both images is the same color, and yet, because of the 
% surrounding colors, the one on the left looks lighter than the one 
% on the right.
%
% Write a script to generate a Figure Window similar to this one. Two 3x3
% matrices were created. Use subplot to display both images side by 
% side (the axes shown here are the defaults). Use the RGB method.

subplot(1,2,1);
img1=ones(3);
img1(2,2)=img1(2,2)+25;
image(img1);
subplot(1,2,2);
img2=ones(3)+25;
img2(2,2)=img2(2,2)-25;
image(img2);

%% Exercise 10
% Put a JPEG file in your Current Folder and use imread to load it into
% a matrix. Calculate and print the mean separately of the red, green, 
% and blue components in the matrix.

readImage = imread('parrot.jpg');
readImageR = readImage(:,:,1);
readImageG = readImage(:,:,2);
readImageB = readImage(:,:,3);
[r c d] = size(readImage);

meanR = mean(mean(readImageR));
meanG = mean(mean(readImageG));
meanB = mean(mean(readImageB));

rstd = std(double(reshape(readImageR,1,r*c)));
gstd = std(double(reshape(readImageG,1,r*c)));
bstd = std(double(reshape(readImageB,1,r*c)));
%%
subplot(2,2,1)
image(readImage)
title('Original Image');
subplot(2,2,2)
image(readImageR)
title('Red');
subplot(2,2,3)
image(readImageG)
title('Green');
subplot(2,2,4)
image(readImageB)
title('Blue');

%% Exercise 11

%  Some image acquisition systems are not very accurate, and the 
% result is noisy images. To see this effect, put a JPEG file in your 
% Current Folder and use imread to load it. Then, create a new image 
% matrix by randomly adding or subtracting a value n to every element 
% in this matrix. Experiment with different values of n. Create a script 
% that will use subplot to display both images side by side.

readImage = imread('parrot.jpg');
[r c d] = size(readImage);

noise = randi([-50 50],r,c,d);
readImageN = readImage + uint8(noise);

subplot(1,2,1)
image(readImage)
title('Original Image');
subplot(1,2,2)
image(readImageN)
title('Image with noise');

%% Exercise 12

% Put a JPEG file into your Current Folder. Type in the following script,
% using your own JPEG file name.
I1 = imread('parrot.jpg');
[r c h] = size(I1);
Inew(:,:,:) = I1(:,c:-1:1,:);
figure(1)
subplot(2,1,1)
image(I1);
subplot(2,1,2)
image(Inew);
% Determine what the script does. Put comments into the script to 
% explain it step-by-step.

%% Exercise 13

%  Write a function that will create a simple GUI with one static text 
% box near the middle of the Figure Window. Put your namein the string,
% and make the background color of the text box white.

f = figure('Visible','off','color','white','Position',...
            [300, 400, 450, 250]);
        
h_text = uicontrol('Style','text','Position',[180, 110, 100, 25],...
    'BackgroundColor','white','String','Oriod Malo','FontSize',15);
f.Name = 'Chapter 13 Exercise 13';
movegui(f,'center');
f.Visible ='on';

%% Exercise 14

% Write a function that will create a GUI with one editable text box 
% near the middle of the Figure Window. Put your name in the string. 
% The GUI should have a call-back function that prints the user’s string 
% twice, one under the other

ch13e14

%% Exercise 15

% Fill in the callback function so that it gets the value of the slider, 
% prints that value in the text box, and uses it to set the LineWidth of the 
% plot (so, e.g., if the slider value is its maximum, the line width of the 
% plot would be 5).

ch13e15

%% Exercise 16
% 
% Write a function that creates a GUI to calculate the area of a 
% rectangle. It should have edit text boxes for the length and width, and 
% a push button that causes the area to be calculated and printed in a 
% static text box.

ch13e16

%% Exercise 17
% Write a function that creates a simple calculator with a GUI. The GUI should have 
% two editable text boxes in which the user enters numbers. There should be four 
% pushbuttons to show the four operations (+, -, *, /). When one of the four pushbuttons is 
% pressed the type of operation should be shown in a static text box between the two 
% editable text boxes and the result of the operation should be displayed in a static text box. 
% If the user tries to divide by zero display an error message in a static text box.

ch13e17

%% Exercise 18

% Modify any example GUI to use the ‘HorizontalAlignment’ property 
% to left-justify text within an edit text box.
ch13e18

%% Exercise 19
% The Wind Chill Factor (WCF) measures how cold it feels with a given
% air temperature T (in degrees Fahrenheit) and wind speed (V, in miles 
% per hour). The formula is approximately
% WCF = 35.7 + 0.6 T – 35.7 (V 0.16) + 0.43 T (V 0.16)
% Write a GUI function that will display sliders for the temperature and 
% wind speed. The GUI will calculate the WCF for the given values, and 
% display the result in a text box. Choose appropriate minimum and 
% maximum values for the two sliders.

ch13e19

%% Exercise 20
% Write a GUI function that will graphically demonstrate the 
% difference between a for loop and a while loop. The function will have
% two push buttons: one that says ‘for’, and the other says ‘while’. There
% are two separate callback functions, one associated with each of the 
% pushbuttons. The callback function associated with the ‘for’ button 
% prints the integers 1 through 5, using pause(1) to pause for 1 second 
% between each, and then prints ‘Done.’ The callback function 
% associated with the ‘while’ button prints integers beginning with 1 and 
% also pauses between each. This function, however, also has another 
% pushbutton that says ‘mystery’ on it. This function continues printing 
% integers until the ‘mystery’ button is pushed, and then it prints 
% ‘Finally!’.

ch13e20

%% Exercise 21
% Write a function that will create a GUI in which there is a plot of 
% cos(x). There should be two editable text boxes in which the user can 
% enter the range of x

ch13e21

%% Exercise 22
% Write a function that will create a GUI in which there is a plot. Use 
% a button group to allow the user to choose among several functions to 
% plot.

ch13e22

%% Exercise 23
% Write a GUI function that will create a rectangle object. The GUI 
% has a slider on top that ranges from 2 to 10. The value of the slider 
% determines the width of the rectangle. You will need to create axes 
% for the rectangle. In the callback function, use cla to clear the children
% from the current axes so that a thinner rectangle can be viewed.

ch13e23

%% Exercise 24
% Write a GUI that displays an image in which all of the elements are 
% the same color. Put 3 sliders in that allow the user to specify the 
% amount of red, green, and blue in the image. Use the RGB method.

ch13e24

%% Exercise 25
% Put two different JPEG files into your Current Folder. Read both into
% matrix variables. To superimpose the images, if the matrices are the 
% same size, the elements can simply be added element-by-element. 
% However, if they are not the same size, one method of handling this is 
% to crop the larger matrix to be the same size as the smaller, and then 
% add them. Write a script to do this.

ch13e25

%% Exercise 26

    cmap = colormap(jet);
    mycolors = ones(257,3);
    mycolors(2:end,:) = cmap;
    colormap(mycolors)

    subplot(1,2,1)
    wmat = ranwalk(8);
    image(wmat)
    subplot(1,2,2)
    wmat = ranwalk(100);
    image(wmat)

%% Exercise 27

% Use App Designer to create a text editor. Create an app that has a 
% large text box as seen in Figure 13.47. Under it there will be a slider 
% that controls the font size of the text, and buttons to make the text 
% bold and/or italic. Start by dragging a text box into the design area. 
% Click on the box, and then in Design View look at the Edit Field (Text) 
% Properties browser. By changing properties such as the style, Name, 
% and Size, and then inspecting the code in Code View, you sit ametcan 
% see what to change in the callback functions.

appdesigner % load the appropriate exercise from AppDesigner

%% Exercise 28
% Create a stoplight app as seen in Figure 13.48. There are two 
% pushbuttons labeled ‘Stop’ and ‘Go’, and three lamps. When the ‘Go’ 
% button is pushed, the green lamp is lit. When the ‘Stop’ button is 
% pushed, the yellow lamp is lit briefly, and then the red lamp is lit.

appdesigner % load the appropriate exercise from AppDesigner


%% Exercise 29

load gong;
sGong = y;
load chirp;
sChirp = y;
sMix = [sGong; sChirp];
sound(sMix,8192);


%% Exercise 30

% The following function playsound below plays one of the built-in 
% sounds. The function has a cell array that stores the names. When the
% function is called, an integer is passed, which is an index into this  
% cell array indicating the sound to be played.

% The default is ‘train’, so if the 
% user passes an invalid index, the default is used. 
% The appropriate MAT-file is loaded.

% If the user passes a second argument, it is the frequency
% at which the sound should be played (otherwise, the default frequency 
% is used). The function prints what sound is about to be played and at 
% which frequency, and then actually plays this sound.

% You are to fill in 
% the rest of the following function. Here are examples of calling it (you 
% can’t hear it here, but the sound will be played!)
% >> playsound(-4)
% You are about to hear train at frequency 8192.0
% >> playsound(2)
% You are about to hear gong at frequency 8192.0
% >> playsound(3,8000)
% You are about to hear laughter at frequency 8000.0

% Copy-paste these 3 commands in the Command Window