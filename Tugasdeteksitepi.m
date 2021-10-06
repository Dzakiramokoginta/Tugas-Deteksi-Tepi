Image = imread('Dzakira1.jpg');
figure(1);
imshow(Image);
title('Gambar Berwarna');

q = rgb2gray(Image);
figure(2);
imshow(q);
title ('Gambar Keabuan');

%Sobel
r = edge(q,'Sobel');
figure(3);
imshow(r);
title('Gambar Metode Sobel');

%Roberts
s = edge(q,'Roberts');
figure(4);
imshow(s);
title('Gambar Metode Roberts');

%Prewitt
t = edge(q,'Prewitt');
figure(5);
imshow(t);
title('Gambar Metode Prewitt');

%Laplacian
u = edge(q,'log');
figure(6);
imshow(u);
title('Gambar Metode Laplacian');

%Compass
Utara = [1 1 1; 1 -2 1; -1 -1 -1];
Selatan = [-1 -1 -1; 1 -2 1; 1 1 1];
Timur = [-1 1 1; -1 -2 1; -1 1 1];
Barat = [1 1 -1; 1 -2 -1; 1 1 -1];

figure(7);
imshow(conv2(q,Utara,'same'));
title('Gambar Compass Utara');

figure(8);
imshow(conv2(q,Selatan,'same'));
title('Gambar Compass Selatan');

figure(9);
imshow(conv2(q,Timur,'same'));
title('Gambar Compass Timur');

figure(10);
imshow(conv2(q,Barat,'same'));
title('Gambar Compass Barat');

%Isotropic
Horizontal = [-1 0 1; -sqrt(2) 0 sqrt(2); -1 0 1];
Vertikal = [-1 -sqrt(2) -1; 0 0 0; 1 sqrt(2) 1];

figure(11);
imshow(conv2(q,Horizontal,'same'));
title('Gambar Isotropic Horizontal');

figure(12);
imshow(conv2(q,Vertikal,'same'));
title('Gambar Isotropic Vertikal');