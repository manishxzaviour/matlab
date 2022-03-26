a=imread('clpsm4.png');
sp=imnoise(a,'salt & pepper');
gaussian=imnoise(a,'gaussian');
poisson=imnoise(a,'poisson');
speckle=imnoise(a,'speckle');
subplot(2,3,1);
imshow(a);
title('original');
subplot(2,3,2);
imshow(sp);
title('salt and pepper');
xlabel('noise');
subplot(2,3,3);
imshow(gaussian);
title('gaussian');
xlabel('noise');
subplot(2,3,5);
imshow(poisson);
title('poisson');
xlabel('noise');
subplot(2,3,6);
imshow(speckle);
title('speckle');
xlabel('noise');
