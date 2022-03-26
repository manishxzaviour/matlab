ay=imread('clp.png');
axx=rgb2gray(ay);
ax=imcomplement(axx);
a=im2double(ax);
b=imresize(a,1/4);
c=imresize(a,1/8);
b1=imresize(imresize(a,1/4),4);
c1=imresize(imresize(a,1/8),8);
subplot(2,3,1);
imshow(a);
title('original');
subplot(2,3,4);
imshow(a/3);
title('0-85(255/3)');
xlabel('scale')
subplot(2,3,2);
imshow(b);
title('1/4 64x64');
xlabel('resize')
subplot(2,3,3);
imshow(c);
title('1/8 32x32');
xlabel('resize')
subplot(2,3,5);
imshow(b1);
title('1/4*4 256x256');
xlabel('resize')
subplot(2,3,6);
imshow(c1);
title('1/8*8 256x256');
xlabel('resize')
