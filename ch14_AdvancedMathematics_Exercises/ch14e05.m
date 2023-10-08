function out = ch14e05(v)
% ----------------------------------------------------------------------- %
% A moving average of a data set x = {x1, x2, x3, x4, …, xn} is 
% defined as a set of averages of subsets of the original data set. For 
% example, a moving average of every two terms would be 1/2 *{x1+ 
% x2, x2+ x3, x3 + x4, …, xn-1 + xn}. Write a function that will 
% receive a vector as an input argument, and will calculate and return 
% the moving average of every two elements.
% ----------------------------------------------------------------------- %
    part1 = v(1,end-1);
    part2 = v(2,end);
    
    out = 0.5*(part1+part2);
end

