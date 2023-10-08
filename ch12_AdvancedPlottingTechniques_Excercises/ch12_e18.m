function ch12_e18(varargin)
% Write a function that will plot cos(x) for x values ranging from –pi 
% to pi in steps of 0.1, using black *’s. It will do this three times across in
% one Figure Window, with varying line widths (Note: even if individual 
% points are plotted rather than a solid line, the line width property will 
% change the size of these points.). If no arguments are passed to the 
% function, the line widths will be 1, 2, and 3. If, on the other hand, an 
% argument is passed to the function, it is a multiplier for these values 
% (e.g., if 3 is passed, the line widths will be 3, 6, and 9). The line widths 
% will be printed in the titles on the plots.

x = -pi:0.1:pi;
y = cos(x);

    m = 1;
    if nargin == 1
        m = varargin{1};
    end
    
    for i=1:3
        subplot(1,3,i);
        h(i) = plot(x,y);
        set(h(i),'Color','k');
        set(h(i),'LineWidth',m*i);
        title(sprintf('LineWidth %d', m*i));
    end


end

