function outvol = ch10_nestedvolume(len, wid, ht)
%nestedvolume receives the length, width and height of a cube and returns
%the volume; it calls a nested function that returns the area of the base.
% Format: ch10_nestedvolume(length, width, height)

    outvol  = base * ht;
    
    function outbase = base
        % returns the area of the base
        outbase = len*wid;
    end % base function

end % nestedvolume function