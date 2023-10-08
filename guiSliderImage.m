function guiSliderImage
    f = figure('Visible','off','Units','Normalized',...
        'Position',[.2 .5 .4 .3],'Color','white');
    minval = 0;
    maxval = 1;
    
    % Create the slider object
    slhan = uicontrol('Style','slider','Units','Normalized',...
        'Position',[.3 .7 .4 .1],'Min',minval,'Max',maxval,...
        'Callback',@callbackfn);
    
    % Text Boxes
    h_min_text = uicontrol('Style','text','BackgroundColor','white',...
        'Units','Normalized','Position',[.1 .7 .1 .1],...
        'String',num2str(minval));
    h_max_text = uicontrol('Style','text','BackgroundColor','white',...
        'Units','Normalized','Position',[.8 .7 .1 .1],...
        'String',num2str(maxval));
    h_st_text = uicontrol('Style','text','BackgroundColor','white',...
        'Units','Normalized','Position',[.45 .8 .1 .1],...
        'Visible','off');
    
    axhan = axes('Position',[.2 .1 .6 .5]);
    f.Name = 'Slider Example with an image';
    movegui(f,'center')
    f.Visible = 'on';
    
    function callbackfn(~,~)
        num = slhan.Value;
        set(h_st_text,'Visible','on','String',num2str(num))
        myimage1 = imread('snowyporch.jpg');
        dimmer = num*myimage1;
        image(dimmer)
    end
    
end

