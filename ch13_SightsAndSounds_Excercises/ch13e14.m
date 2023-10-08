function ch13e14
    f = figure('Visible', 'off','color','white','Position',...
     [300, 400, 500, 325]);
    hedit = uicontrol('Style','edit','Position', ...
     [150, 150, 200, 25],'Callback',@printname);
    set(f,'Name','GUI with edit box')
    movegui(f,'center')
    set(f,'Visible','on');

     function printname(source,eventdata)
         set(hedit, 'Visible', 'off')
         str = get(hedit,'String');
         htxt1 = uicontrol('Style', 'text', 'Position', ...
         [150, 150, 200, 25], 'String', str,...
         'BackgroundColor', 'white');
         htxt2 = uicontrol('Style', 'text', 'Position', ...
         [150, 50, 200, 25], 'String', str,...
         'BackgroundColor', 'white');
     end
 
 
end

