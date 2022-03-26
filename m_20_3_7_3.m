aa=imread('clpsm10.jpg');
a=rgb2gray(aa);
h=fspecial('motion',0.05,45);
g=imfilter(a,h,'circular');
subplot(1,2,1);
imshow(a);
title('motion blur');
subplot(1,2,2);
imshow(g);
title('output');