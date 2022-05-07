clear all;
clc;
input = imread('tulips.png');
input=rgb2gray(input); 
input=imresize(input, [512 512]); 
message='Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
len = length(message) * 8;
ascii_value = uint8(message);
bin_message = transpose(dec2bin(ascii_value, 8));
bin_message = bin_message(:);
N = length(bin_message);
bin_num_message=str2num(bin_message);
output = input;
height = size(input, 1); 
width = size(input, 2);
embed_counter = 1;
for i = 1 : height 
    for j = 1 : width
        if(embed_counter <= len)
            LSB = mod(double(input(i, j)), 2);
            temp = double(xor(LSB, bin_num_message(embed_counter)));
            output(i, j) = input(i, j)+temp;
            embed_counter = embed_counter+1;
        else
            break;
        end
          
    end
end

sum1 = 0;
sum2 = 0;
for i =1 : 512
    for j = 1 : 512
        sum1 = sum1 + double(input(i, j));
        sum2 = sum2 + double(output(i, j));
    end
end
sum1 / (512*512)
sum2 / (512*512)

figure, imshow(input);
figure, imshow(output);
