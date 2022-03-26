%read a image
img=imread('clp.png')
subplot(2,4,1)
imshow(img)
title("img")
imwrite(img,'hello.png')
%convert into binary
b = im2bw(img,0.5);
subplot(2,4,2)
imshow(b)
title("binary")
%greyscale
g=rgb2gray(img)
subplot(2,4,3)
imshow(g)
title("grayscale")

