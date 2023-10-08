function out = c10_e14(a,b,c)

% The two real roots of the quadratic equation ax^2+bx+c=0 where a is
% nonzero are given by [-b +/- sqrt(D)] / 2a , where the discriminant D =
% b^2 - 4ac.  Pass the values of a b and c to the function. Use a nested
% function to calculate the discriminant

    sol1 = (-b - sqrt(D))./(2*a);
    sol2 = (-b + sqrt(D))./(2*a);
   
    function discriminant = D
        discriminant = (b^2)-(4*a*c);
    end

    if (D==0)
        out = sol1;
    elseif (D>0)
        out = [sol1 sol2];
    else
        fprintf('Negative Discriminant');
    end
end

