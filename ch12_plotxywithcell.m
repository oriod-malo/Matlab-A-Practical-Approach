function ch12_plotxywithcell(x, fnhan, rca)
    lenrca = length(rca);
    y = fnhan(x);
    for i = 1:lenrca
        subplot(1, lenrca, i)
        funh = str2func(rca{i});
        funh(x,y)
        title(upper(rca{i}))
        xlabel('x')
        ylabel(func2str(fnhan))
    end
end

