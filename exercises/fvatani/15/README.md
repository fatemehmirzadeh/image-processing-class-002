
```
clc;
clear all;
close all;
```
از دستورات clear all، clc و close all  به ترتیب برای پاک کردن صفحهCommand Window، حذف متغیرها و بستن پنجره ها استفاده شده است.
```
image=imread('pears.png'); 
gray_image = uint8(zeros(size(image,1),size(image,2)));
```
تصویربا دستور imread خوانده می‌شود. تابع size برای استخراج اندازه تصویر(ماتریس) بکار رفته است و سایز کامل ماتریس را بر می‌گرداند ایندکس اول تعداد سطر و ایندکس دوم تعداد ستون را برمی گردانند. با کمک تابع zeros یک ماتریس که حاوی درایه‌های صفر است با اندازه مشخص شده ساخته می‌شود. uint۸ برای تبدیل ورودی به یک عدد صحیح ۸ بیتی بدون علامت استفاده شده است. تصویر نهایی در gray_image ذخیره می‌شود و مقدار سطر و ستون آن با تصویر اصلی برابر است.
```
for i=1 : size(image,1)
    for j=1 : size(image,2)
         R = image(i,j,1);
         G = image(i,j,2);
         B = image(i,j,3);
         gray_image(i,j)=(R*0.299)+(G*0.587)+(B*0.114);
         R=0;G=0;B=0;
    end
end
```
به تعداد تمام پیکسل‌های تصویر (سطر و ستون) حلقه تکرار می‌شود. مقدار پیکسل قرمز، سبز و آبی به ترتیب در متغیر‌ها ذخیره می‌شود. کانال اول مقدار رنگ قرمز، کانال دوم مقدار رنگ سبز و کانال سوم مقدار رنگ آبی نشان می‌دهد. باتوجه به فرمول مقدار هر پیکسل محاسبه می‌شود.
```
figure, imshow(gray_image);
```
خروجی نمایش داده می‌شود.
 ![image](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fvatani/15/tamrin15.png)
