function guiSliderPlot

    f = figure('Visible','off','Units','Normalized',...
        'Position', [.2 .5 .4 .3], 'Color', 'white');
    
    minval = 0;
    maxval = 4*pi;
    
    % Create the slider object
    h_slide = uicontrol('Style','slider', 'Units','Normalized',...
        'Position',[.3 .7 .4 .1],'Min',minval,'Max',maxval,...
        'Callback',@callbackfn);
    
    % Textboxes to show the min and max slider value
    h_min_text = uicontrol('Style','text','BackgroundColor','white',...
        'Units','Normalized','Position',[.1 .7 .1 .1],...
        'String',num2str(minval));
    h_max_text = uicontrol('Style','text','BackgroundColor','white',...
        'Units','Normalized','Position',[.8 .7 .1 .1],...
        'String',num2str(maxval));
    h_st_text = uicontrol('Style','text','BackgroundColor','white',...
        'Units','Normalized','Position',[.45 .8 .1 .1],...
        'Visible','off');
    
    %Create axes handle for plot
    h_ax = axes('Position', [.2 .1 .6 .5]);
    f.Name = 'Slider Example with a sin plot';
    movegui(f,'center');
    f.Visible = 'on';
    
    % Callback function displays the current slider value & plots sin
    function callbackfn(~,~)
        num = h_slide.Value;
        set(h_st_text,'Visible','on','String',num2str(num))
        x = 0:num/50:num;
        y = sin(x);
        plot(x,y)
        xlabel('x')
        ylabel('sin(x)')
    end
end

