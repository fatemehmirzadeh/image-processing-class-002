<div dir="rtl">
  
 ### برنامه ای بنویسید که به صورت رندوم یک مربع سفید 50 در 50 پیکسل را در هر اجرا روی تصویر ایجاد کند. 
  </br>
  
  ### input
  
  ![baboon](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2003/baboon.png)
  
  </br>
  
  تبدیل عکس به خاکستری چون در زمینه خاکستری کار میکنیم:
  
  <div dir="ltr">
  
```
  clc;
close all;
clear;

img = imread("MATLAB/baboon.png");
img = rgb2gray(img);
figure, imshow(img);
```
 
![gray](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2003/gray50.JPG)
  
  </div>
  
  
  استفاده از hold on  و  axis on  برای ثابت نگه داشتن plot تصویر استفاده میشود.
  <div dir="ltr">
  
  ```
  img_siz = size(img);
sw = img_siz(1,1);
sh = img_siz(1,2);

figure,imshow(img);
hold on;
axis on;
  ```
  
  </div>

استفاده از تابع randi برای تولید اعداد اینتیجر رندوم برای پیدا کردن رندوم موقعیت مربع

  <div dir="ltr">
  
  ```
  random_x = randi(sw);
random_y = randi(sh);

s_x = [50 , 50 , 0, 0 ];
s_y = [50 , 0 , 0 , 50];
  ```
  
  </div>

استفاده از یک شرط برای موقعیت یابی و ایجاد شکل مربع و استفاده از حلقه while  برای ایجاد مربع ها در موقعیت های متفاوت هر اجرای برنامه.
  <div dir="ltr">
  
```
  if random_x<(sh - 50) && random_y<(sw - 50)
    plot(s_x + random_x, s_y + random_y , 'b', 'MarkerSize', 10, 'LineWidth', 1);
    fill(s_x + random_x, s_y + random_y , 'w');
else
    while random_x > (sh - 50) || random_y > (sw - 50)
     random_x = randi(sh - 50);
     random_y = randi(sw - 50);
     plot(s_x + random_x, s_y + random_y , 'b', 'MarkerSize', 10, 'LineWidth', 1);
     fill(s_x + random_x, s_y + random_y , 'w');
     break;
     
    end
  
end
```

  
### output
  
![sq](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2003/white50.JPG)
  </div>
  
  
  
  </div>
