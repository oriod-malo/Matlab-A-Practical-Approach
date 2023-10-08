function guiWithEditBox
    %guiWithEditBox has an editable text box and a callback function that
    % prints the user's string in red
    % FORMAT: guiWithEditBox or guiWithEditBox()
    
    % first we create the GUI as invisible
    f = figure('Visible', 'off', 'color', 'white', 'Units',...
        'Normalized','Position',[.25 .5 .4 .2]);
    
    % name the gui
    f.Name = 'GUI with an editable text';
    movegui(f,'center');
    
    % we create the objects in the gui
    hsttext = uicontrol('Style','text',...
        'BackgroundColor','white','Units','Normalized',...
        'Position',[.2 .6 .6 .2],...
        'String','Enter your string here');
    huitext = uicontrol('Style','edit','Units','Normalized',...
        'Position',[.3 .3 .4 .2], 'Callback', @callbackfn);
    
    % now we make the gui visible
    f.Visible = 'on';
    
    % Callback function
    function callbackfn(hObject,eventdata)
        set ([hsttext huitext], 'Visible','off');
        printstr = huitext.String;
        hstr = uicontrol('Style','text',...
            'BackgroundColor','white','Units',...
            'Normalized','Position', [.1 .3 .8 .4],...
            'String', printstr,...
            'ForegroundColor','Red','FontSize',30);
        hstr.Visible = 'on';
    end % end callback function

end

