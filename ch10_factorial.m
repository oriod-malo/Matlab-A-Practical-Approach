function facn = ch10_factorial(n)
%fact recursively finds n!
% Format: fact(n)

    if n==1
        facn = 1;
    else
        facn=n * ch10_factorial(n-1); % recursive calling
    end
end

