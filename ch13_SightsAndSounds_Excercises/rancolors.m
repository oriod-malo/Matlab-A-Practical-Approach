function rancolors(nColors)
    mycolormap = rand(nColors,3);
    colormap(mycolormap);
    mat = 1:nColors;
    image(mat)
    colorbar
end

