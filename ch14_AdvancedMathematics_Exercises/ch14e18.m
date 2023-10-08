function out = ch14e18(datapointsX,datapointsY)
% ----------------------------------------------------------------------- %
% Write a function that will receive data points in the form of x and y 
% vectors. If the lengths of the vectors are not the same, then they can’t
% represent data points so an error message should be printed. 
% Otherwise, the function will fit a polynomial of a random degree 
% through the points, and will plot the points and the resulting curve 
% with a title specifying the degree of the polynomial. The degree of the 
% polynomial must be less than the number of data points, n, so the 
% function must generate a random integer in the range from 1 to n-1 for
% the polynomial degree.
% ----------------------------------------------------------------------- %
    if(length(datapointsX) ~= length(datapointsY))
        error('Datapoints must be of matching lengths!!!');
        
    else
       n = randi([1,length(datapointsX)-1]); 
       coefs = polyfit(datapointsX,datapointsY,n);
       curve = polyval(coefs,datapointsX);
       plot(datapointsX,datapointsY,'b*',datapointsX,curve);
       title(sprintf('Polynomial degree: %d',n))
    end
end

