function guiSlider
    f = figure('Visible','off', 'color','white',...
        'Units','Normalized',  'Position',[.25 .5 .4 .2]);
    
    % Minimum and maximum values for the slider
    minval = 0;
    maxval = 5;
    
    % Create the slider object
    slider_han = uicontrol('Style','slider',  'Units','Normalized',...
        'Position',[.3 .5 .4 .2],  'Min',minval,  'Max',maxval,...
        'SliderStep', [0.5 0.5], 'Callback',@callbackfn);
    
    h_min_text = uicontrol('Style','text','BackgroundColor','white',...
        'Units','Normalized',  'Position',[.1 .5 .1 .1],...
        'String', num2str(minval));
    
    h_max_text = uicontrol('Style','text','BackgroundColor','white',...
        'Units','Normalized','Position',[.8 .5 .1 .1],...
        'String', num2str(maxval));
    
    h_st_text = uicontrol('Style','text', 'BackgroundColor','white',...
        'Units','Normalized','Position',[.4 .3 .2 .1],...
        'Visible','off');
    
    movegui(f,'center')
    f.Name = 'Slider Example';
    f.Visible = 'on';
    
    %Callback function that displays the slider value
    function callbackfn(hObject,eventdata)
        num = slider_han.Value;
        set(h_st_text,'Visible','on','String',num2str(num));
    end
    
end

