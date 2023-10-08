%% Chapter 13 - Sights and Sounds

%% 13.1.1 Colormaps
%%
% parula	Parula colormap array
% turbo     Turbo colormap array
% hsv       HSV colormap array
% hot       Hot colormap array
% cool      Cool colormap array
% spring	Spring colormap array
% summer	Summer colormap array
% autumn	Autumn colormap array
% winter	Winter colormap array
% gray      Gray colormap array
% bone      Bone colormap array
% copper	Copper colormap array
% pink      Pink colormap array
% sky       Sky colormap array
% lines     Lines colormap array
% jet       Jet colormap array
% colorcube	Colorcube colormap array
% prism     Prism colormap array
% flag      Flag colormap array

%%
map = colormap;
[r,c] = size(map);
%%
imagemat = reshape(1:64,8,8);
colormap(parula(64));
image(imagemat)
%%
im = image(imagemat);
colormap(jet(64));
image(imagemat);

%%
mat = randi(r,500);
colormap(jet(250));
image(mat)
%%
mycolormap = [0 0 0; 1 1 1; 1 0 0];
colormap(mycolormap);
mat = randi(3,40);
image(mat);
%%
% Pink Jet & Parula sphere
[x y z] = sphere(20);
sph1=subplot(1,3,1);
surf(x,y,z);
title('Pink Sphere');
colormap(sph1,pink);
colorbar

sph2=subplot(1,3,2);
surf(x,y,z);
title('Jet Sphere');
colormap(sph2,jet);
colorbar

sph3=subplot(1,3,3);
surf(x,y,z);
title('Parula Sphere');
colormap(sph3,parula);
colorbar
%%
mat = zeros(2,2,3);
mat(1,1,1) = 255;
mat(1,2,3) = 255;
mat(2,1,2) = 255;
mat = uint8(mat);
image(mat);

%%
matred = uint8(zeros(2,2,3));
matred(:,:,1) = mat(:,:,1);
matgreen = uint8(zeros(2,2,3));
matgreen(:,:,2) = mat(:,:,2);
matblue = uint8(zeros(2,2,3));
matblue(:,:,3) = mat(:,:,3);
subplot(2,2,1);
image(mat);
subplot(2,2,2);
image(matred);
subplot(2,2,3);
image(matgreen);
subplot(2,2,4);
image(matblue);
%%
% uint16 version
clear
mat = zeros(2,2,3);
mat(1,1,1) = 65535;
mat(1,2,3) = 65535;
mat(2,1,2) = 65535;
mat = uint16(mat);
image(mat);
%% 
% double version (default is double)
clear
mat = zeros(2,2,3);
mat(1,1,1) = 1;

mat(1,2,3) = .6;
mat(1,2,2) = 1;

mat(2,1,2) = 1;
image(mat);

%% 13.2 Introduction to GUI
%%
ch13simpleGUI;

%%
guiWithEditBox

%%
guiWithPushbutton

%%
guiSlider

%%
guiWithTwoPushbuttons

%%
guiSliderPlot


%% 
guiSliderImage

%%
guiWithButtonGroup

%% 13.3 Guide and App Designer

%% 13.3.1 Guide
guide
% will be removed in the future in favor of the AppDesigner so I'm skipping
% some parts relative to this

%% 13.3.2 App Designer
%%
appdesigner

%% 13.4 Sound Files
%%
figure(1)
subplot(2,1,1)
load chirp
plot(y);
ylabel('Amplitude');
title('Chirp');


subplot(2,1,2)
load train
plot(y);
ylabel('Amplitude')
title('Train')
