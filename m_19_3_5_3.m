ax=imread('clpsm8.jpg');
a1=rgb2gray(ax);
a=double(a1/40);
x=[-1 0 1; -1 0 1; -1 0 1];
by=imfilter(a,x);
bx=imfilter(a,x');
b=sqrt(bx.^2+by.^2);
subplot(2,2,1);
imshow(a);
title('original');
subplot(2,2,2);
imshow(bx);
xlabel('x=[-1 0 1; -1 0 1; -1 0 1]');
subplot(2,2,3);
imshow(b)
xlabel('edge')
subplot(2,2,4);
imshow(by);
xlabel('y=[-1 -1 -1; 0 0 0; 1 1 1]');
