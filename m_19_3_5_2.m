ax=imread('clpsm3.png');
a=rgb2gray(ax);
subplot(2,2,1);
imshow(a);
title('original');
subplot(2,2,2);
imshow(a>110);
title('i>110');
subplot(2,2,3);
imshow(a<110);
title('i<110');
subplot(2,2,4);
imshow(a>100 & a<125);
title('110<i<125');
