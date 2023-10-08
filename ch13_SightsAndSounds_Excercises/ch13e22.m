function ch13e22

% Write a function that will create a GUI in which there is a plot. Use 
% a button group to allow the user to choose among several functions to 
% plot.

    f = figure('Visible','off','Position',[360, 500, 400, 400]);
    
    hGroup = uibuttongroup('Parent',f,'Units','Normalized',...
        'Position',[.3 .7 .3 .2], 'Title', 'Choose Function',...
        'SelectionChangeFcn',@whichfn);
    hSin = uicontrol(hGroup,'Style','radiobutton',...
        'String','sin','Units','Normalized',...
        'Position',[.2 .7 .4 .2]);
    hCos = uicontrol(hGroup,'Style','radiobutton',...
        'String','cos','Units','Normalized',...
        'Position',[.2 .4 .4 .2]);
    
    set(hGroup,'SelectedObject',[])
    hAxes = axes('Units','Normalized','Position',[.2 .1 .5 .5]);
    
    set(f,'Name','Choose Function Plot')
    movegui(f,'center')
    set(f,'Visible','on')
    
    function whichfn(source,eventdata)
       which = get(hGroup,'SelectedObject');
       x = -3 : 0.1 : 3;
       if which == hSin
           y = sin(x);
           plot(x,y);
       else
           y = cos(x);
           plot(x,y);
       end
    end
    
end

