function ch13e19
    % The Wind Chill Factor (WCF) measures how cold it feels with a given
    % air temperature T (in degrees Fahrenheit) and wind speed (V, in miles 
    % per hour). The formula is approximately
    % WCF = 35.7 + 0.6 T – 35.7 (V 0.16) + 0.43 T (V 0.16)
    % Write a GUI function that will display sliders for the temperature and 
    % wind speed. The GUI will calculate the WCF for the given values, and 
    % display the result in a text box. Choose appropriate minimum and 
    % maximum values for the two sliders.

    f = figure('Visible','off','color','white','Position',[300,400,500,325]);
    
    hTempSlider = uicontrol('Style','slider',...
        'Position',[150,250,200,20],'Min',0,'Max',60,'Value',35,...
        'Callback',@update);
    hTempText = uicontrol('Style','text','Position',...
        [175,275,150,18],'HorizontalAlignment',...
        'Center','BackgroundColor','white');
    
    hVelSlider = uicontrol('Style','slider','Position',...
        [150,150,200,20],'Min',0,'Max',30,'Value',15,...
        'Callback',@update);
    hVelText = uicontrol('Style','text','Position',...
        [175,175,150,18],'HorizontalAlignment',...
        'Center','BackgroundColor','white');
    
    hWCFtext = uicontrol('Style','text','Position',...
        [175,75,150,18],'HorizontalAlignment','Center',...
        'BackgroundColor','white');
    
    set(f,'Name','Simple GUI');
    movegui(f,'center');
    update();
    set(f,'Visible','on');
    
    function update(source,eventdata)
        temp = get(hTempSlider,'Value');
        vel = get(hVelSlider,'Value');
        set(hTempText,'String',...
            ['Temperature: ' num2str(round(temp)) ' F']);
        set(hVelText,'String',...
            ['Wind Velocity: ' num2str(round(vel)) ' MPH']);
        WCF = 35.7 + 6*round(temp) - 35.7*(round(vel)).^.16 + ...
            0.43*round(temp)*(round(vel)).^(0.16);
        set(hWCFtext,'String',...
            ['Wind Chill Factor: ' num2str(round(WCF)) ' F']);
    end
    
    
end

