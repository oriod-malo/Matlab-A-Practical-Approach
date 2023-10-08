function guiWithButtonGroup
    f = figure('Visible','off','color','white',...
        'Units','Normalized','Position',[.2 .5 .4 .3]);
    
    % Create a button group
    grouph = uibuttongroup('Parent',f,'Units','Normalized',...
        'Position',[.2 .5 .4 .4],'Title','Choose Color',...
        'SelectionChangedFcn',@whattodo);
    
    % Put two radio buttons in the group
    toph = uicontrol(grouph,'Style','radiobutton','String','Blue',...
        'Units','Normalized','Position',[.2 .7 .4 .2]);
    
    both = uicontrol(grouph,'Style','radiobutton','String','Green',...
        'Units','Normalized','Position',[.2 .4 .4 .2]);
    
    % Put a statc text box to the right
    texth = uicontrol('Style','text','Units','Normalized',...
        'Position',[.6 .5 .3 .3],'String','HELLO','Visible','off',...
        'BackgroundColor','white');
    
    grouph.SelectedObject = [];
    f.Name = 'GUI with button group';
    movegui(f,'center');
    f.Visible = 'on';
    
    function whattodo(~,~)
        which = get(grouph,'SelectedObject');
        if which == toph
            texth.ForegroundColor = 'blue';
        else
            texth.ForegroundColor = 'green';
        end
        
        texth.Visible = 'on';
    end
end

