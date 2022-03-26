aaa=imread('clp.png');
aa=rgb2gray(aaa);
a=double(aa);
A = fft2(a);
LogE=log(1+abs(A));
A_shifted=fftshift(LogE);
sigma=10;
h_lowPass=fspecial('gaussian',256,sigma);
H_lowPass=fft2(h_lowPass);
G=A.*H_lowPass;
g=ifftshift(G);
f=im2uint8(g);
subplot(2,2,1);
imshow(a,[]);
title('Original');
subplot(2,2,2);
plot(abs(A_shifted));
title('FFT Shifted');
subplot(2,2,3);
freqz2(G);
title('IFFT Shifted');
subplot(2,2,4);
imshow(f,[]);
title('output');


