ax=imread('clpsm2_low_contrast.png');
bx=imread('clpsm2.png');
x=rgb2gray(bx);
a=rgb2gray(ax);
b=imcomplement(a);
c=im2double(a);
d=[];
e=[];
[r,s]=size(c);
for i=1:r
    for j=1:s
    d(i,j)=1.5*c(i,j)^2;    %power transform
    e(i,j)=1.5*log(1+c(i,j)); %log transform
    end
end
subplot(3,2,1);
imshow(x);
title('original');
subplot(3,2,2);
imshow(a);
title('lowCont');
subplot(3,2,3);
imshow(b);
title('negative');
subplot(3,2,4);
imshow(e);
title('log');
subplot(3,2,6);
imshow(d);
title('power');
