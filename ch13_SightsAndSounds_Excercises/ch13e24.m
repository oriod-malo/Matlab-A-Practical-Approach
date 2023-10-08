function ch13e24
% Write a GUI that displays an image in which all of the elements are 
% the same color. Put 3 sliders in that allow the user to specify the 
% amount of red, green, and blue in the image. Use the RGB method.

    f = figure('Visible','off','Position',[360,500,400,400]);
    
    minval = 0;
    maxval = 255;
    
    % Create the slider objects
    hSlideR = uicontrol('Style','slider','Units','Normalized',...
        'Position',[.1 .4 .25 .05],'Min',minval,'Max',maxval,...
        'SliderStep',[1 1],'Callback',@callbackfn);
    hSlideG = uicontrol('Style','slider','Units','Normalized',...
        'Position',[.4 .4 .25 .05],'Min',minval,'Max',maxval,...
        'SliderStep',[1 1],'Callback',@callbackfn);
    hSlideB = uicontrol('Style','slider','Units','Normalized',...
        'Position',[.7 .4 .25 .05],'Min',minval,'Max',maxval,...
        'SliderStep',[1 1],'Callback',@callbackfn);
    
    % Textboxes to show the slider values
    hTextR = uicontrol('Style','text','BackgroundColor','white',...
        'Units','Normalized','Position',[.2,.3,.075,.025],...
        'Visible','off');
    hTextG = uicontrol('Style','text','BackgroundColor','white',...
        'Units','Normalized','Position',[.525,.3,.075,.025],...
        'Visible','off');
    hTextB = uicontrol('Style','text','BackgroundColor','white',...
        'Units','Normalized','Position',[.85,.3,.075,.025],...
        'Visible','off');
    
    
    % Axes handle for plot
    hAxis = axes('Units','Normalized','Position',[.4,.6,.2,.2]);
    movegui(f,'center')
    set(f,'Visible','on');
    
    function callbackfn(source,eventdata)
        rNum = get(hSlideR,'Value');
        gNum = get(hSlideG,'Value');
        bNum = get(hSlideB,'Value');
        
        set(hTextR,'Visible','on','String',num2str(rNum));
        set(hTextG,'Visible','on','String',num2str(gNum));
        set(hTextB,'Visible','on','String',num2str(bNum));
        
        mat = zeros(2,2,3);
        mat(:,:,1) = rNum;
        mat(:,:,2) = gNum;
        mat(:,:,3) = bNum;
        
        mat = uint8(mat);
        image(mat)
    end
end