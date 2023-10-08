im1 = imread('photo1.jpg');
im2 = imread('photo2.jpg');

[r1, c1, d1] = size(im1);
[r2, c2, d2] = size(im2);

    if r1 > r2
        im1 = im1(1:r2,:,:);
    elseif r1 < r2
        im2 = im2(1:r1,:,:);
    end

    if c1 > c2
        im1 = im1(:,1:c2,:); 
    elseif c1 < c2
        im2 = im2(:,1:c1,:);
    end
    
    [r1 c1 d1] = size(im1);
    [r2 c2 d2] = size(im2);
    
    % Superimpose
    im3 = im1 + im2;
    image(im3)