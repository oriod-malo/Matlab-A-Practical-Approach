function ch13e17
    f = figure('Visible','off','color','white',...
        'Position',[360 500 300 300]);

    hop = uicontrol('Style','text','BackgroundColor','White',...
        'Position',[120 150 40 40]);
    hequals = uicontrol('Style','text','BackgroundColor','White',...
        'Position',[200 150 40 40],'String','=','Visible','Off');
    hresult = uicontrol('Style','text','BackgroundColor','White',...
        'Position',[240 150 40 40],'Visible','Off');

    hfirst = uicontrol('Style','Edit','Position',[80 170 40 40]);
    hsecond = uicontrol('Style','Edit','Position',[160 170 40 40]);

    hadd = uicontrol('Style','pushbutton','Position',[45 50 50 50],...
        'String','+','Callback',@callbackfn);
    hsub = uicontrol('Style','pushbutton','Position',[100 50 50 50],...
        'String','-','Callback',@callbackfn);
    hmul = uicontrol('Style','pushbutton','Position',[155 50 50 50],...
        'String','*','Callback',@callbackfn);
    hdiv = uicontrol('Style','pushbutton','Position',[210 50 50 50],...
        'String','/','Callback',@callbackfn);

    hzero = uicontrol('Style','text','Position',[60 115 150 25],...
        'BackgroundColor','White','String',...
        'Cannot Divide by Zero','Visible','off'),
    set([hop hequals hresult hfirst hsecond hadd hsub hmul hdiv],...
        'Units','Normalized');
    set(f,'Visible','On');

    function callbackfn(source,eventdata)
        firstnum = str2num(get(hfirst,'String'));
        secondnum = str2num(get(hsecond,'String'));
        set(hequals,'Visible','On');
        set(hzero,'Visible','Off');
        switch source
            case hadd
                result = firstnum + secondnum;
                set(hop,'String','+')
                set(hresult,'String',num2str(result),'Visible','On')
            case hsub
                result = firstnum - secondnum;
                set(hop,'String','-')
                set(hresult,'String',num2str(result),'Visible','On')
            case hmul
                result = firstnum * secondnum;
                set(hop,'String','*')
                set(hresult,'String',num2str(result),'Visible','On')
            case hdiv
                if (secondnum == 0)
                    set(hzero,'Visible','on')
                else
                    result = firstnum/secondnum;
                    set(hop,'String','/')
                    set(hresult,'String',num2str(result),'Visible','On')
                end
        end
    end
end

