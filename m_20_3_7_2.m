aa=imread('clpsm9.jpg');
a=im2double(rgb2gray(aa));
b=imnoise(a,'salt & pepper',0.01);
[x y]=size(b);
maX=zeros([x y]);
miN=zeros([x y]);
for i=2:x-1 
    for j=2:y-1
        m=b(i-1:i+1,j-1:j+1);
        Min=min(m(:));
        Max=max(m(:));
        miN(i,j)=Min;
        maX(i,j)=Max;
    end
end
c=medfilt2(b,[7 7]);
subplot(2,3,1);
imshow(a);
title('original');
subplot(2,3,2);
imshow(b);
title('noise');
ylabel('salt & pepper');
subplot(2,3,3);
imshow(maX);
title('Max');
subplot(2,3,5);
imshow(miN);
title('Min');
subplot(2,3,6);
imshow(c);
title('Median');
