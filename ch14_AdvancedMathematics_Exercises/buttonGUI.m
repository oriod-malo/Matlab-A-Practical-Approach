function buttonGUI
f = figure('Visible','off','Position',[360, 500, 400, 400]);

grouph = uibuttongroup('Parent',f,'Units','Normalized',...
    'Position',[.3 .6 .4 .3], 'Title','Choose Order',...
    'SelectionChangeFcn',@whattodo);

but1 = uicontrol(grouph,'Style','radiobutton','String','First',...
    'Unit','Normalized','Position',[.2 .8 .4 .2]);

but2 = uicontrol(grouph,'Style','radiobutton','String','Second',...
    'Unit','Normalized','Position',[.2 .5 .4 .2]);

but3 = uicontrol(grouph,'Style','radiobutton','String','Third',...
    'Unit','Normalized','Position',[.2 .2 .4 .2]);

axhan = axes('Units','Normalized','Position',[.2 .2 .7 .3]);

x = 1:4;
y = randi(10,[1,4]);
lotx = 1: 0.2: 4;

set(grouph,'SelectedObject',[])
set(f,'Name','Exam GUI')
movegui(f,'center')
set(f,'Visible','on');

function whattodo(source, eventdata)
    which = get(grouph,'SelectedObject');
    if which == but1
        coefs = polyfit(x,y,2);
    elseif which == but2
        coefs = polyfit(x,y,2);
    else
        coefs = polyfit(x,y,3);
    end
    curve = polyval(coefs,lotx);
 
    plot(x,y,'ro',lotx,curve)
end
end