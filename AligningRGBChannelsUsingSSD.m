%Read the image
img = imread('course1image.jpg');
B=img(1:341,1:400);
G=img(342:682,1:400);
R=img(683:1023,1:400);
b=double(B);
g=double(G);
r=double(R);

ref_img_region = g(146:196, 175:225);
ref_img_red = r(146:196, 175:225);
ref_img_blue = b(146:196, 175:225);

mina = 10000000000;
minb = 10000000000;

for i = -10:10
     for j = -10:10
           aux1 = circshift(ref_img_red, [i, j]);
           aux2 = circshift(ref_img_blue, [i, j]);
           ssd1 = sum((ref_img_region - aux1).^2, 'all');
           ssd2 = sum((ref_img_region - aux2).^2, 'all');
           if ssd1 < mina
              mina = ssd1;
              rr = [i, j];
           end
           
           if ssd2 < minb
               minb = ssd2;
               bb = [i, j];
           end
     end
end

shiftr=circshift(r,rr);
shiftb=circshift(b,bb);

ColorImg_aligned=cat(3,shiftr,G,shiftb);
imshow(ColorImg_aligned);
