function ch13e06
    bwmap = [0 0 0;1 1 1];
    colormap(bwmap);
    
    mat = randi(2,50);
    subplot(1,2,1);
    image(mat);
    title('Yin');
    subplot(1,2,2);
    yang = ~(mat-1);
    image(yang);
    title('Yang');
end

