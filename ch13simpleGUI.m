function ch13simpleGUI
%ch13simpleGUI creates a simple gui with a static text box
%   Format: ch13simpleGUI or ch13simpleGUI()

    f = figure('Visible','off','color','white','Position',...
        [300, 400, 450, 250]);
    htext = uicontrol('Style','text','Position',...
        [200, 50, 100, 25], 'String', 'My first GUI string');
    
    f.Name = 'SimpleGUI';
    movegui(f,'center');
    f.Visible = 'on';
end

