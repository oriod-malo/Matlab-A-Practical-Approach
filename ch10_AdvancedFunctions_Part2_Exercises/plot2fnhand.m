function plot2fnhand(fnhand1,fnhand2)

% Write a function plot2fnhand that will receive two function handles as
% input arguments and will display in two Figure Windows, plots of these
% functions with function names in the titles. The function will create an
% x vector that ranges from 1 to n where n is a random integer in the
% inclusive range from 4 to 10. For example, if the function is called as
% follows:
% >> plot2fnhand(@sqrt,@exp)
% and the random integer is 5, the first figure would display the sqrt
% function of x = 1:5, and the second figure would display the exp(x)
% function for x = 1:5
max = randi([4,10]);
x = 1:max;

figure(1)
y = fnhand1(x);
plot(x,y, 'b-')
title(func2str(fnhand1))
figure(2)
y = fnhand2(x);
plot(x,y,'r-')
title(func2str(fnhand2))

end

