
```
clc;
clear all;
close all;
```
از دستورات clear all، clc و close all  به ترتیب برای پاک کردن صفحهCommand Window، حذف متغیرها و بستن پنجره ها استفاده شده است.
```
image=imread('benchmark/Lenna.png');
hiddenImage=imread('benchmark/text.jpg');
image=rgb2gray(image); 
hiddenImage=rgb2gray(hiddenImage); 

bitplane8 = zeros(size(image));
new_image = uint8(zeros(size(image)));

image_histogram = zeros(1,256);
image_histogram_eq = zeros(1,256);
new_image_histogram = zeros(1,256);
new_image_histogram_eq = zeros(1,256);

[row,col,chan] = size(image);
[hrow,hcol,hchan] = size(hiddenImage);

threshold = 150;
hiddenImage = hiddenImage < threshold;
```
تصویر اصلی و تصویر دوم که باید مخفی شود از پوشه benchmark خوانده می‌شود( این پوشه در کنار فایل قرار دارد). هر دو تصویر به کمک تابع rgb۲gray به خاکستری تبدیل می‌شوند. متغیر bitplane۸ برای ذخیره هشتمین bitplane و new_image برای ذخیره تصویری که تغیر کیفیت داده شده استفاده می‌شوند. سایز این دو ماتریس با تصویر اصلی برابر است. سایز تصاویر با تابع size بدست آمده و ذخیره می‌شود. متغیر‌های image_histogram، image_histogram_eq، new_image_histogram و new_image_histogram_eq برای محاسبه هیستوگرام تصاویر استفاده شده‌اند و به تعداد رنگ‌ها ۲۵۵ مقدار دهی صفر شده‌اند. جهت مخفی کردن تصویر، تصویر دوم با تعیین مقدار آستانه به باینری تبدیل شده است.
```
for i = 1 : row
    for j = 1 : col
        binary = de2bi(image(i,j),8);
        bitplane8(i,j) = binary(8);
    end
end
figure(1), imshow(double(bitplane8)); title('bit plane 8');
```
به تعداد سطر و ستون‌ها تصویر پیمایش می‌شود. مقدار هر پیکسل با دستور de۲bi به باینری تبدیل می‌شود. بیت هشتم باینری ذخیره می‌شود. درنهایت تصویر نمایش داده می‌شود.
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/18/tamrin18-1.png)

```
if hrow > row || hcol > col
    scale = min([row/hrow,col/hcol]);
    hiddenImage  = imresize(hiddenImage ,scale);
    [hrow, hcol] = size(hiddenImage);
end
```
در صورتیکه ابعاد تصویر دوم بیشتر از تصویر اصلی باشد، اندازه تصویر دوم را تغیر می‌دهیم. در این تابع اگر مقدار scale بین ۰ تا ۱ باشد تصویر خروجی کوچکتر از تصویر ورودی می‌شود و اگر بزرگتر از یک باشد تصویر خروجی بزرگتر می‌شود. اگر مقدار 5. 1 باشد تصویر ۵۰ درصد افزایش سایز دارد. برای تعیین میزان scale سایز تصویر اصلی را بر تصویر دوم تقسیم کرده و کوچکترین مقدار انتخاب می‌شود.
```
if hrow < row || hcol < col
    wm = zeros(size(image),'uint8');
    for i = 1:row
        for j =1:col
            wm(i,j)=hiddenImage(mod(i,hrow)+1,mod(j,hcol)+1);
        end
    end
    hiddenImage = wm(1:row,1:col);  
 end
```
اگر مقدار تصویر دوم از تصویر اصلی کوچکتر بود تصویر دوم در سراسر تصویر اصلی کاشی می‌شود. متغیر wm به اندازه تصویر اصلی مقداردهی صفر می‌شود. به اندازه طول و عرض تصویر اصلی پیمایش انجام می‌شود. مقدارهر پیکسل hiddenImage درپیکسل wm ذخیره می‌شود. mod(x، hrow) شامل پیکسل‌های ۰ تا hrow-۱ می‌شود. برای حل مشکل دسترسی به ایندکس صفر مقادیر با یک جمع شده‌اند. حال اگر مقدار طول و یا عرض تصویر اصلی بیشتر باشد با دستور mod می‌توان مقداری تکراری برای پیکسل ذخیره کرد. برای مثال اگر تصویر ۱۰۰ سطر داشته باشد مقدار پیکسل اول mod(۱۰۱، ۱۰۰) برای آن ذخیره می‌شود. درنهایت مقدار wm در hiddenImage ذخیره می‌شود.
```
wmImage = image;
for i= 1:row
    for j = 1:col
        for k=1:3
             wmImage(i,j,k) = bitset(image(i,j),1,hiddenImage(i,j));
        end
    end
end

figure(2); imshow(wmImage); title('Watermarked Image');
```
دستور bitset مقدارimage را با بیت اول hiddenImage که کم ارزش‌ترین است بر می‌گرداند. این کار برای تمامی پیکسل‌ها انجام می‌شود. درنهایت تصویر نمایش داده می‌شود.

![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/18/tamrin18-2.png)
``` 
for i = 1:1:row
    for j = 1:1:col
        new_image(i,j) = bitand(image(i,j),240);
    end
end
figure(3), imshow(new_image); title('compressed image');
```
تابع bitand عملگر bit wise and را بر روی ورودی‌ها اعمال می‌کند. با این عملگر به راحتی می‌توان بیت مورد نظر را بدست اورد. برای مثال اگر مقدار پیکسل ۵۶ باشد و بخواهیم بیت اول را بدست بیاوریم با یک عمل bit wise and را انجام می‌دهیم (۰=۱&۱۱۱۰۰۰). به همین ترتیب برای بدست آوردن بیت‌های بعدی (دوم، سوم، چهارم، پنجم و غیره) باید مقدار ورودی با ۲(۰=۱۰&۱۱۱۰۰۰)، ۴(۰=۱۰۰&۱۱۱۰۰۰)، ۸(۱=۱۰۰۰&۱۱۱۰۰۰)، ۱۶(۱=۱۰۰۰۰&۱۱۱۰۰۰) و... بصورت بیتی and شود. برای کاهش حجم بیت‌های ۰، ۱، ۲ و ۳ را حذف می‌کنیم. برای این کار باید مقدار پیکسل با ۲۴۰ (۱۱۱۱۰۰۰۰) بصورت بیتی and شود. در نهایت تصویر را نمایش می‌دهیم.
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/18/tamrin18-3.png)
```
for i=1:row
   for j=1:col
       z=image(i,j);
       image_histogram(z+1)=image_histogram(z+1)+1;
   end
end

for i=1:row
   for j=1:col
       z=new_image(i,j);
       new_image_histogram(z+1)=new_image_histogram(z+1)+1;
   end
end

figure(4);
subplot(1,2,1);
grayLevels = 0 : 255;
bar(grayLevels, image_histogram);
xlabel('Gray Level'); ylabel('Pixel Count');
title('original Image histogram');
grid on;

subplot(1,2,2);
bar(grayLevels, new_image_histogram);
xlabel('Gray Level'); ylabel('Pixel Count');
title('compressed image histogram');
grid on;
```
برای رسم هیستوگرام تعداد هر رنگ (۲۵۵-۰) در تصویر شمارش می‌شود. برای این کار تمام پیکسل‌های تصویر با دو حلقه پیمایش می‌شود. مقدار پیکسل در متغیر z ذخیره می‌شود. اندازه ماتریس image_histogram به تعداد رنگ‌ها است و چون مقدار پیکسل‌ها از صفر شروع می‌شود برای رفع مشکل دسترسی به ایندکس اعداد با یک جمع شده‌اند. حال اگر مقدار پیکسل ۰ باشد به مقدار قبلی image_histogram(۱) که تعداد پیکسل‌های صفر را نشان می‌دهد یک واحد اضافه شده و مجدد ذخیره می‌شود. این کار برای محاسبه هیستوگرام new_image_histogram نیز انجام می‌شود. در نهایت دو نمودار را نمایش می‌دهیم.
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/18/tamrin18-4.png)
```
image_histeq=histogram_equalization(image);
wmImage_histeq=histogram_equalization(new_image);
figure(5);
subplot(1,2,1); imshow(image_histeq); title('original Image histogram equalization');
subplot(1,2,2); imshow(wmImage_histeq); title('compressed image histogram equalization');
```
برای رسم هیستوگرام بهبود یافته از تمرین ۱۲ (فایل histogram_equalization.m) این درس استفاده شده و کد به تابع تبدیل شده است. برای تبدیل کد به تابع از دستور function استفاده شده است سپس تصویر بهبود یافته به عنوان خروجی و تصویر اصلی به عنوان ورودی دریافت شده است. در نهایت عملیات دریافت تصویر، تبدیل تصویر به خاکستری و نمایش آن از کد اصلی حذف شده است. حال در کد اصلی بعد از دریافت تصویر بهبود یافته، خروجی تصویر نمایش داده شده است.
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/18/tamrin18-5.png)

```
for i=1:row
   for j=1:col
       z=image_histeq(i,j);
       image_histogram_eq(z+1)=image_histogram_eq(z+1)+1;
   end
end

for i=1:row
   for j=1:col
       z=new_image_histeq(i,j);
       new_image_histogram_eq(z+1)=new_image_histogram_eq(z+1)+1;
   end
end

figure(8);
subplot(1,2,1);
grayLevels = 0 : 255;
bar(grayLevels, image_histogram_eq);
xlabel('Gray Level'); ylabel('Pixel Count');
title('original Image histogram after histogram equalization');
grid on;

subplot(1,2,2);
bar(grayLevels, new_image_histogram_eq);
xlabel('Gray Level'); ylabel('Pixel Count');
title('compressed image histogram after histogram equalization');
grid on;
```
هیستوگرام تصاویر بهبود یافته به روشی که در بالا توضیح داده شده بود محاسبه شده و نمایش داده می‌شود.
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/18/tamrin18-6.png)


 **روش مخفی کردن خود را توضیح دهید**
 
هر پیکسل سه مقدار دارد (RGB)، هر مقدار ۸ بیتی است (به این معنی است که می‌توانیم ۸ مقدار باینری را ذخیره کنیم) و سمت راست‌ترین بیت‌ها اهمیت کمتری دارند. بنابراین، اگر ما سمت راست‌ترین بیت‌ها را تغییر دهیم، تأثیر کمی روی تصویر نهایی خواهد داشت. این کلید استگانوگرافی برای پنهان کردن یک تصویر در تصویر دیگر است. بیت‌های کم‌اهمیت‌تر را از یک تصویر تغییر می‌دهیم. تصویری که باید مخفی شود را به باینری تبدیل می‌کنیم و مقدارش را دربیت کم اهمیت تصویر ذخیره می‌کنیم. اگر بخواهیم تصویر را به باینری تبدیل نکنیم می‌توان ۴ بیت کم ارزش تصویر اصلی را حذف کرده و ۴ بیت پرارزش تصویر دوم را به جای آن قرار دهیم.

**در صورت تفاوت ابعاد دو تصویر، چه عملی باید انجام بگیرد؟**

درصورتیکه تصویر دوم از تصویر اصلی بزرگتر باشد، با تابع imresize سایز تصویر را تنظیم می‌کنیم. اگر از سایز تصویر اصلی کوچکتر باشد با تکرار پیکسل های تصویر دوم آنها را هم سایز می کنیم(کاشی کردن تصویر).

**ایده شما برای کاهش حجم تصاویر ورودی براساس Bit plane چیست؟**

هر تصویر دیجیتال اساساً از تعدادی پیکسل تشکیل شده است، هر پیکسل مقدار شدت خاصی دارد که به عنوان یک عدد باینری در حافظه کامپیوتر ذخیره می‌شود. معمولاً این عدد باینری از ۸ رقم تشکیل شده است. bitplane مجموعه‌ای از بیت‌های مربوط به موقعیت مشخص در اعداد باینری است. با حذف بیت‌های کم اهمیت می‌توان تصویر را فشرده کرد تا اندازه کل تصویر کاهش یابد.

**دلیل تفاوت هیستوگرام های خروجی چیست؟**

تصویر تغییر کیفیت یافته رنگ‌های بازه [۰، ۱۶]، [۳۲، ۴۸]، [۶۴، ۱۱۲]، [۱۲۸، ۲۴۰] را شامل می‌شود و تعداد رنگ‌ها محدود‌تر است. این امر به این دلیل است که مقدار ۴ بیت کم ارزش‌تر همیشه صفر در نظر گرفته شده و ۴ بیت با ارزش‌تر می‌توانند مقادیر مختلف بگیرند که در نهایت اعداد بازه فوق را شامل می‌شوند. بر خلاف کیفیت اصلی تصویر که رنگ‌های بیشتری دارد.

 **آیا امکان افزایش کنتراست در دو تصویر وجود دارد؟**

کنتراست خوب تصویر به این معناست که از رنگ‌های موجود به خوبی در تصویر استفاده شده باشد و تصویر حالت تیره یا روشن نداشته باشد. در نتیجه می‌توان گفت امکان افزایش کنتراست وجود دارد چون با بهبود هیستوگرام می‌توان به خوبی تمایز بین رنگ‌ها را ایجاد کرد.
 
 
 
