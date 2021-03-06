a=imread('clpsm6.jpg');
a1=imread('clpsm6_bright.jpg');
a2=imread('clpsm6_dark.jpg');
a3=imread('clpsm6_contr_high.jpg');
a4=imread('clpsm6_contr_low.jpg');
subplot(2,5,1);
imshow(a);
title('original');
subplot(2,5,2);
imshow(a1);
title('bright');
subplot(2,5,3);
imshow(a2);
title('dark');
subplot(2,5,4);
imshow(a3);
title('contrast');
xlabel('high');
subplot(2,5,5);
imshow(a4);
title('contrast');
xlabel('low');
subplot(2,5,6);
imhist(a);
ylabel('original');
subplot(2,5,7);
imhist(a1);
ylabel('bright');
subplot(2,5,8);
imhist(a2);
ylabel('dark');
subplot(2,5,9);
imhist(a3);
ylabel('contrast high');
subplot(2,5,10);
imhist(a4);
ylabel('contrast low');
figure
c=histeq(a3);
subplot(1,2,1);
imshow(a3);
xlabel('high-contrast');
subplot(1,2,2);
imshow(c);
xlabel('histeq')
figure
subplot(1,3,1);
dx=imread('clpsm5.jpg');
imshow(dx);
xlabel('original');
subplot(1,3,2);
dy=imread('clpsm5_2.jpg');
imshow(dy);
xlabel('reference');
subplot(1,3,3);
dz=imhistmatch(dx,dy);
imshow(dz);
xlabel('output');

