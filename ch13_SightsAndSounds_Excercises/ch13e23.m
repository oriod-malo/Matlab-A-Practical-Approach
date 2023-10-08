function ch13e23
    f = figure('Visible','off','Position',[360,500,400,400]);
    minval = 2;
    maxval = 10;
    hSlider = uicontrol('Style','slider','Position',[140,280,100,50],...
        'Min',minval,'Max',maxval,'Value',minval,'Callback',@callbackfn);
    hMinText = uicontrol('Style','text','BackgroundColor','white',...
        'Position',[90,310,40,15],'String',num2str(minval));
    hMaxText = uicontrol('Style','text','BackgroundColor','white',...
        'Position',[250,310,40,15],'String',num2str(maxval));
    hStText = uicontrol('Style','text','BackgroundColor','white',...
        'Position',[170,340,40,15],'Visible','off');
    hAxis = axes('Units','Pixels','Position',[100,50,200,200]);
    
    set(f,'Name','Rectangle GUI')
    movegui(f,'center')
    set([hSlider,hMinText,hMaxText,hStText,hAxis],'Units','Normalized');
    set(f,'Visible','on');
    
    function callbackfn(source,eventdata)
       num = get(hSlider,'Value');
       set(hStText,'Visible','on','String',num2str(num))
       cla % delete all children of current axes
       rh = rectangle('Position',[5,5,5,10]);
       axis([0 30 0 30])
       set(rh,'LineWidth',num)
    end

end

