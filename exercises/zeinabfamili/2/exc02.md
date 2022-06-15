## padding exercise 
#### برنامه ای بنویسید که padding تصویر را به گونه ای ایجاد کند که دقیقا خانه ی آخر کنار تصویر مجددا به عنوان padding تکرار شود.
##### این چند خط اول برای هر کد برنامه نویسی تصویر نوشته می شود .
```
clc; 
close all;
clear;
image1=imread('sails.png');
image2=rgb2gray(image1);
figure,imshow(image2);
```
![pad](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/benchmark/sails.png)

![pad](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc02/1.png)
##### در این قسمت یک تصویر جدید با مقادیر صفر می سازیم که تعداد سطر و ستون انها 2 واحد از سطر و ستون تصویر اصلی بیشتر است.
```
[m,n]=size(image2);
image3=zeros(m+2,n+2);
```
##### در این قسمت کد مقادیر تصویر جدید مقادیر تصویر اصلی را از سطر 2 تا یکی مانده به اخر و از ستون 2 تا یکی مانده به اخر می گیرد.سپس برای سطر اول تصویر جدید مقادیر سطر اول تصویر اصلی جایگذاری می شود.برای سطر آخر تصویر جدید نیز مقادیر سطر آخر تصویر اصلی جایگذاری شده است. و همین کار برای ستون اول و اخر تصویر جدید انجام می گیرد.
```
image3(2:end-1,2:end-1)=image2;
image3(1,2:end-1)=image2(1,1:end);
image3(end,2:end-1)=image2(end,1:end);
image3(2:end-1,1)=image2(1:end,1);
image3(2:end-1,end)=image2(1:end,end);
```
##### برای رسم تصویر از این خط استفاده می شود ابتدا تصویر double بود و صفحه سفید نمایش می داد با دستور uint8 قابل نمایش می شود.
```
figure, imshow(uint8 (image3));
```
![pad](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/zeinabfamili/im.exc02/2.png)
