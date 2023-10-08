function result = mypower(a,n)

% A recursive definition of an
%  where a is an integer and n is a nonnegative integer follows:
% 
%  a^n      = 1 if n == 0
%           = a * a^(n-1) if n > 0
%
% Write a recursive function called mypower, which receives a and n and 
% returns the value of an
%  by implementing the previous definition. Note: 
% The program should NOT use ^ operator anywhere; this is to be done 
% recursively instead! Test the function.

    if n==0
        result = 1;
    else
        result = a * mypower(a,n-1);
    end
end

