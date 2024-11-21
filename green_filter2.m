clc;
clear all;
my_image=imread('/MATLAB Drive/New folder/crop_1.jpeg');
my_image=imresize(my_image,[512 512]);
[R, C, color] = size(my_image);
bin=zeros(R,C,3,'uint8');
th=0;
for i=1:R
    for j=1:C        
        if my_image(i, j, 2)-my_image(i, j, 1)>th && my_image(i, j, 2)-my_image(i, j, 3)>th
            bin(i, j, 1)=my_image(i, j, 2);
            bin(i, j, 2)=my_image(i, j, 2);
            bin(i, j, 3)=my_image(i, j, 2);  
        else
            bin(i, j, 1)=0;
            bin(i, j, 2)=0;
            bin(i, j, 3)=0; 
        end
    end
end
imshow(bin)
