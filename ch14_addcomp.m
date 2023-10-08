function outc = ch14_addcomp(z1,z2)

% ch14_addcompt adds two complex numbers z1 & z2 and returns the result
% Format: ch14_addcomp(z1,z2)

    realpart = real(z1) + real(z2);
    imagpart = imag(z1) + imag(z2);
    outc = realpart + imagpart * 1i;

end