%a=[1,2,3;3,4,5;6,7,8;];
%b=[10,11,12;13,14,15;16,17,18;];
%a*b

%A=(2,3) B=(0,2)
%p=2;
%q=3;
%s=0;
%t=2;
%eucledian distance
%eucledian=sqrt((p-s)^2+(q-t)^2)
%chessboard distance
%chessboard=max(abs(p-s),abs(q-t))
%cityblock distance
%cityblock=abs(p-s)+abs(q-t)

ax=imread('clp_cont_min.png');
bx=imread('clp.png');
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
subplot(3,2,4);
imshow(b);
title('negative');
subplot(3,2,5);
imshow(e);
title('log');
subplot(3,2,6);
imshow(d);
title('power');