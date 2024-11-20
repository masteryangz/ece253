clc;
clear all;
my_image=imread('/MATLAB Drive/New folder/crop_1.jpeg');
my_image=imresize(my_image,[512 512]);
[R, C, color] = size(my_image);
bin=zeros(R,C,3,'uint8');
for i=1:R
    for j=1:C
        bin(i, j, 1)=my_image(i, j, 2);
        bin(i, j, 2)=my_image(i, j, 2);
        bin(i, j, 3)=my_image(i, j, 2);
    end
end
imshow(bin)