function ch13e20
    f = figure('Visible','off','color','white',...
        'Position',[360,500,400,400]);
    movegui(f,'center')
    
    hButton1 = uicontrol('Style','pushbutton','String',...
        'for','Position',[150,275,100,50],...
        'Callback',@callbackfn1);
    hButton2 = uicontrol('Style','pushbutton','String',...
        'while','Position',[150,175,100,50],...
        'Callback',@callbackfn2);
    hstr = uicontrol('Style','text','BackgroundColor','white',...
        'Position',[150,200,100,100],'FontSize',30,...
        'ForegroundColor','Red','Visible','off');
    set(f,'Visible','on');
    
    function callbackfn1(source,eventdata)
        set([hButton1 hButton2],'Visible','off');
        set(hstr,'Visible','on')
        for i = 1:5
            set(hstr,'String',int2str(i));
            pause(1) % pause for 1 second
        end
        set(hstr,'String','Done!!');
    end
    function callbackfn2(source,eventdata)
        set([hButton1 hButton2],'Visible','off');
        set(hstr,'Visible','on')
        cbmb = uicontrol('Style','pushbutton','String','mystery',...
            'Position',[300,50,50,50],...
            'Callback',@cbfn,'Visible','on');
        done = false;
        i = 0;
        while ~done
            i = i+1;
            set(hstr,'String',int2str(i));
            pause(1);
        end
        set(hstr,'String','Finally!');
        function cbfn(source,eventdata)
            done = true;
        end

    end
end

