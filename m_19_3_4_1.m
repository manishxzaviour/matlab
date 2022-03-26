ax=imread('clpsm5.jpg');
a=rgb2gray(ax);
a1=im2double(a);
stretch=stretchlim(a1);
a2=imadjust(a1,[0.5 0.75]);
a3=imadjust(a1,stretch);
b=imcomplement(a);
subplot(2,2,1);
imshow(a1);
title('original');
subplot(2,2,2);
imshow(a2);
title('scale');
xlabel('<0.5 0.75>');
stretch=stretchlim(a1);
subplot(2,2,3);
imshow(b);
title('complement');
subplot(2,2,4);
imshow(a3);
title('stretch');
xlabel(stretch);


