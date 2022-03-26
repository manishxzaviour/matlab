a=imread('clp.png');% read image to a
b=im2bw(a,0.5); 
c=rgb2gray(a);
d=imresize(b,[128 128]);
% write write a binary image of a
subplot(2,2,1);
imshow(a); %original
title('original');
subplot(2,2,3)
imshow(b); % show binary image
title('B'+string(size(b)));
subplot(2,2,4)
imshow(c); % show greyscale image
title('grayScale');
%
figure(2);
subplot(2,2,1)
imshow(d); % show resized image 128
title('B'+string(size(d)));
subplot(2,2,3)
imshow(b); % show binary image
title('B'+string(size(b)));
impixelinfo


