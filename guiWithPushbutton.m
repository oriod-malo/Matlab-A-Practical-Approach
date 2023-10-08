function guiWithPushbutton
    % Create the GUI and make it invisible initially
    f = figure('Visible', 'off', 'color', 'white', 'Units',...
        'Normalized','Position',[.25 .5 .5 .3]);
    hsttext = uicontrol('Style','text','BackgroundColor','white',...
        'Units','Normalized', 'Position',[.2 .7 .6 .2],...
        'String', 'Enter a string here, then push the button');
    huitext = uicontrol('Style','edit','Units','Normalized',...
        'Position',[.3 .5 .4 .2]);
    f.Name = 'GUI with pushbutton';
    movegui(f,'center');
    
    % Create a pushbutton that says "Push me!!"
    hbutton = uicontrol('Style','pushbutton','String',...
        'Push me!!', 'Units','Normalized', 'Position',...
        [.6 .1 .3 .2], 'Callback', @callbackfn);
    % Now make the GUI visible
    f.Visible = 'on';
    
    % Callback function
    function callbackfn(hObject,eventdata)
        set([hsttext huitext hbutton],'Visible','off');
        printstr = huitext.String;
        if isempty(printstr)
            printstr = 'Enter something next time!';
        end
        hstr = uicontrol('Style','text',  'BackgroundColor',...
            'white',  'Units','Normalized',  'Position',...
            [.1 .3 .8 .4],  'String', printstr,...
            'ForegroundColor','Red',  'FontSize',30);
        hstr.Visible = 'on';
    end % end callback function
    
end

