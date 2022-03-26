aa=imread('clpsm9.jpg');
a=im2double(rgb2gray(aa));
b=imnoise(a,'salt & pepper',0.01);
h=9*fspecial('average',[3 3]);
q=3;
f=imfilter(b.^(q+1),h)./(imfilter(b.^q,h)+eps);
e=imfilter(b.^(-q+1),h)./(imfilter(b.^-q,h)+eps);
subplot(2,2,1);
imshow(a);
title('original');
subplot(2,2,2);
imshow(b);
title('noise');
ylabel('salt & pepper');
subplot(2,2,3);
imshow(f);
title('order= 3');
subplot(2,2,4);
imshow(e);
title('order= -3');


        
