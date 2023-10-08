function ch13e16

    f = figure('Visible', 'off','color','white','Position',...
     [300, 400, 500, 325]);
 
	hLengthText = uicontrol('Style','edit',...
        'Position',[190, 250, 50, 18],'String','Length: ',...
        'HorizontalAlignment','right','BackgroundColor','white');
 
    hLengthEdit = uicontrol('Style','edit',...
        'Position',[250, 250, 50, 25]);

	hWidthText = uicontrol('Style','edit',...
        'Position',[190, 200, 50, 18],'String','Width: ',...
        'HorizontalAlignment','right','BackgroundColor','white');
 
    hWidthEdit = uicontrol('Style','edit',...
        'Position',[250, 200, 50, 25]);
    
	hAreaText = uicontrol('Style','text','Position', ...
 [190, 100, 50, 18],'String','Area:','HorizontalAlignment',...
 'right','BackgroundColor','white');
 
    hAreaEdit = uicontrol('Style','edit',...
        'Position',[250, 100, 50, 25],...
        'HorizontalAlignment','right','BackgroundColor','white');
    
    hButton = uicontrol('Style','pushbutton','Position',...
        [200, 150, 100, 25],'String','Calculate Area',...
        'Callback',@calcarea);
    
    set(f,'Name','Area Calculator')
    movegui(f,'center')
    
    set(f,'Visible','on');

    function calcarea(source,eventdata)
        len = str2num(get(hLengthEdit,'String'));
        width = str2num(get(hWidthEdit,'String'));
        area = len*width;
        set(hAreaEdit,'String',num2str(area));
    end

end

