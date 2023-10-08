function ch13e21

    f = figure('Visible','off','Position',[360,500,400,400]);

    hMin = uicontrol('Style','edit','BackgroundColor','white',...
        'Position',[90,285,40,40]);
    hMax = uicontrol('Style','edit','BackgroundColor','white',...
        'Position',[250,285,40,40],'Callback',@callbackfn);

    axhan = axes('Units','Pixels','Position',[100,50,200,200]);

    set(f,'Name','Cos Plot Example')
    movegui(f,'center')
    set([hMin hMax],'Units','Normalized')
    set(f,'Visible','on')
    function callbackfn(source,eventdata)
        xmin = get(hMin,'String');
        xmax = get(hMax,'String');
        x = linspace(str2num(xmin),str2num(xmax));
        y = cos(x);
        plot(x,y)
    end
end

