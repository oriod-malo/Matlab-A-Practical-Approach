function ch14e21(xVector,yVector)
% ----------------------------------------------------------------------- %
% Write a function that will receive x and y vectors representing data 
% points. The function will create, in one Figure Window, a plot showing 
% these data points as circles and also in the top part a second-order 
% polynomial that best fits these points and on the bottom a third-order 
% polynomial. The top plot will have a line width of 3 and will be a gray 
% color. The bottom plot will be blue, and have a line width of 2. 
% ----------------------------------------------------------------------- %
    subplot(2,1,1);
    curve2 = polyfit(xVector,yVector,2);
    values2 = polyval(curve2,xVector);
    plot(xVector,values2,'o','Color',[.5 .5 .5],'LineWidth',3);
    title('Second Order Polynomial');
    
    subplot(2,1,2);
    curve3 = polyfit(xVector,yVector,3);
    values3 = polyval(curve3,xVector);
    plot(xVector,values3,'bo','LineWidth',2);
    title('Third Order Polynomial');
end

