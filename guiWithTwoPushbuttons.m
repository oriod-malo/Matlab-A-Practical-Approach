function guiWithTwoPushbuttons

    f = figure('Visible','off','color','white',...
        'Units','Normalized','Position',[.25 .5 .4 .2]);
    
    f.Name = 'GUI with 2 pushbuttons';
    movegui(f,'center')
    
    %Create the first pushbutton that says "Push me"
    
    h_button1 = uicontrol('Style','pushbutton',...
        'String','Push me!!', 'Units','Normalized',...
        'Position',[.3 .6 .4 .2],'Callback',@callbackfn1);
    h_button2 = uicontrol('Style','pushbutton',...
        'String','No, push me!!', 'Units', 'Normalized',...
        'Position',[.3 .3 .4 .2],'Callback',@callbackfn2);
    f.Visible = 'on';
    
    function callbackfn1(hObject,eventdata)
        set([h_button1 h_button2],'Visible','off');
        h_str = uicontrol('Style','text',...
            'BackgroundColor','white','Units','Normalized',...
            'Position',[.4 .5 .2 .2],'String','!!!!!',...
            'ForegroundColor','Red','FontSize',30);
        h_str.Visible = 'on';
    end

    function callbackfn2(hObject,eventdata)
        set([h_button1 h_button2],'Visible','off');
        h_str = uicontrol('Style','text',...
            'BackgroundColor','white','Units','Normalized',...
            'Position',[.4 .5 .2 .2],'String','*****',...
            'ForegroundColor','Blue','FontSize',30);
        h_str.Visible = 'on';
    end


end

