I=imread('Penguins.jpg');

Ir=rgb2gray(I);
Ir=im2double(Ir);

figure(2);
imshow(Ir);

figure(4);

Im=Binarization(Ir);
imshow(Im);

figure(5);
Im2=imadjust(Ir,[0.3,0.9],[0.3,0.9],0.7);
imshow(Im2);
figure(6);
Im3=Binarization(Im2);
imshow(Im3);

%kï (Bï) = 1 – [D(Bmin, Bï) + D(Bï+1, Bmax)] / D(Bmin, Bmax),


