clc;
close all;
clear;
img = imread("/Users/s.ali.motavally/Desktop/tamrin16/imaget2.jpg");

size=size(img);
x = size(1,1);
y = size(1,2);
result=zeros(x,y,3);

result=uint16(result);

figure,imshow(uint8(img)),hold on


for i=1 : x
    for j=1 : y
        if img(i,j,1)< 25
            result(i,j,1)= 0;
        elseif img(i,j,1) < 76
            result(i,j,1)=51;
        elseif img(i,j,1)< 127
            result(i,j,1)= 102;
        elseif img(i,j,1) < 178
            result(i,j,1)=153;
        elseif img(i,j,1)< 229
            result(i,j,1)= 204;
        else
            result(i,j,1)=255;
        end        
    end
end


for i=1 : x
    for j=1 : y
        if img(i,j,2)< 25
            result(i,j,2)= 0;
        elseif img(i,j,2) < 76
            result(i,j,2)=51;
        elseif img(i,j,2)< 127
            result(i,j,2)= 102;
        elseif img(i,j,2) < 178
            result(i,j,2)=153;
        elseif img(i,j,2)< 229
            result(i,j,2)= 204;
        else
            result(i,j,2)=255;
        end        
    end
end


for i=1 : x
    for j=1 : y
        if img(i,j,3)< 25
            result(i,j,3)= 0;
        elseif img(i,j,3) < 76
            result(i,j,3)=51;
        elseif img(i,j,3)< 127
            result(i,j,3)= 102;
        elseif img(i,j,3) < 178
            result(i,j,3)=153;
        elseif img(i,j,3)< 229
            result(i,j,3)= 204;
        else
            result(i,j,3)=255;
        end        
    end
end
figure, imshow(uint8(result));