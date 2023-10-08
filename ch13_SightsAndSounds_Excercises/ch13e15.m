function ch13e15
f = figure('Visible', 'off','Position',[20,20,500,400]);    
    slhan = uicontrol('Style','slider','Units','Normalized',...
        'Position',[.3 .3 .4 .1],...
        'Min',1,'Max',5,'Value',3,'Callback',@callbackfn);
    
    slval = uicontrol('Style','text','Units','Normalized',...
        'Position',[.4 .1 .2 .1]);
    
    axhan = axes('Units','Normalized','Position',[.3 .5 .4 .3]);
    x = -2*pi:0.1:2*pi;
    y = cos(x);
    phan = plot(x,y)
    set(f,'Visible','on');
    
    % callback function to fill in
    function callbackfn(source,eventdata)
        num = slhan.Value;
        set(slval,'String',num2str(num));
        set(phan,'LineWidth',num);
    end
    % callback function end
end

