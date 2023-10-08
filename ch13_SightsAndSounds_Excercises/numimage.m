function numimage(cm, num)
    colormap(cm)
    cols = num * 2 - 1;
    mat = ones(cols);
    for i = 2:num
     cols = cols - 1;
     mat(i:cols,i:cols) = i;
    end
    image(mat)
end