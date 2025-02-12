### Exercise 18
جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود. 
```
clc;
close all;
clear;
```
در ادامه تصویر اصلی  را خوانده و آن را خاکستری می کنیم.
```
img=imread('Lenna.png');
img=rgb2gray(img); 
```
حال **قصد داریم bitplane 8 را از تصویر اصلی استخراج کنیم .**
برای این کار هم می توانیم به کمک دستور de2bi مقادیر را باینری کرده سپس بیت هشتم را جدا کنیم که کد آن به شکل زیر خواهد بود 
```
[xImg yImg]= size(img);
bitplane8 = zeros(xImg,yImg);

for i = 1  xImg
    for j = 1  yImg
        binary = de2bi(img(i,j),8);
        bitplane8(i,j) = binary(8);
    end
end
```
که ابتدا سایز تصویر را نگه می داریم. سپس ماتریسی به اندازه ابعاد تصویر اصلی تعریف می کنیم که مقادیر bit plane 8 را در آن نگه داریم.
در ادامه به کمک حلقه، روی تمام پیکسل های تصویر حرکت کرده و تمام مقادیر را ابتدا باینری و سپس بیت هشتم آن را در ماتریس bitplane8 می ریزیم. 
<br/>
اما میتوان به صورت دیگری نیز این کار را انجام داد .
```
img= double(img);
bitplane8 = mod(floor(img128), 2);
```
بیاییم مقادیر پیکسل ها را ابتدا به double تبدیل کرد.
چون به دنبال بیت هشتم هستیم و ارزش آن 128 است bit plane 8 تمام مقادیر را بدین شکل محاسبه می کنیم 
<br/>
هر مقدار را بر 128 تقسیم و به پایین گرد کرده، سپس حاصل باقیمانده آن بر 2 را بعنوان بیت هشتم آن پیکسل در تصویر اصلی در نظر می گیریم.
<br/>
در نهایت تصویر حاصل از bit plane 8 را نمایش می دهیم .
```
figure(1), imshow(bitplane8);
title('Bit Plane 8');
```
##### Bit Plane 8
![BitPlane8](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/18/BitPlane8.PNG)
<br/>
در ادامه می خواهیم **تصویر دومی را خوانده و آن را در دل تصویر اول پنهان کنیم .** کد این قسمت به صورت زیر است و در ادامه، آن را قدم به قدم توضیح خواهیم داد.
<br/>
لازم به دکر است این مرحله از کار بروی تصویر در حالت رنگی انجام شده است .
```
clc;
clear;
close all;
cover=imread('Lenna.png');
sum1 = 0;
for i =1  500
    for j = 1  500
        sum1 = sum1 + double(cover(i, j));
    end
end
Origial_image = sum1  (500500)
figure (1),imshow('Lenna.png');

msg=imread('text.jpg');

%Get the R component
cover1=cover(,,1);
cover1=bitand(cover1,248);
msg1=msg(,,1);
shiftmsg3=bitshift(msg1,-5);
cover1 =bitor(cover1,shiftmsg3);

%Get the G component
cover2=cover(,,2);
cover2=bitand(cover2,248);
msg2=msg(,,2);
shiftmsg3=bitshift(msg2,-5);
cover2=bitor(cover2,shiftmsg3);

%Get the B component
cover3=cover(,,3);
cover3=bitand(cover3,248);
msg3=msg(,,3);
shiftmsg3=bitshift(msg3,-5);
cover3=bitor(cover3,shiftmsg3);

cover(,,1)=cover1;
cover(,,2)=cover2;
cover(,,3)=cover3;
stego=cover;
imshow(stego);

sum2 = 0;
for i =1  500
    for j = 1  500
        sum2 = sum2 + double(cover(i, j));
    end
end
Stego_image = sum2  (500500)
figure (2),imshow(stego);
```
در ابتدا تصویر اصلی را خوانده و در قالب متغیر cover آن را معرفی می کنیم .
سپس مقدار میانگین تمام مقادیر پیسکل های تصویر اصلی را محاسبه نموده تا در انتهای نهان نگاری خود ، متوجه تغیییر این تصویر با تصویر نتیجه شویم .
<br/>
این مقدار را با نام Original Image در خروجی چاپ خواهیم کرد .
<br/>
حال تصویر دوم را در قالب متغیر msg تعریف می کنیم . از آنجا که تصویر اصلی ما، تصویری رنگی است پس باید عمل نهان نگاری را در هر سه بعد ماتریس آن انجام تکرار کنیم .
<br/>
به ازای هر کدام از این ابعاد، ابتدا مقادیر پیکسل های آن بعد را در ماتریسی جداگانه نگه می داریم. سپس قرار است مقادیر تصویر دوم را در بیت های 0 و 1 و 2 تصویر اصلی 
قرار دهیم . بنابراین مقادیر پیکسل تصویر اصلی را با مقدار 248 به صورت بیت به بیت and می کنیم در واقع 248 معادل 11111000 باینری است .
<br/>
در ادامه می آییم بیت های تصویر دوم را 5 بیت به سمت راست شیفت می دهیم تا دقیقا در جایگاه بیت هایی از تصویر اصلی قرار گیرد که هدف ماست .
<br/>
با or کردن بیت به بیت بین بیت های با ارزش 3 و 4 و 5 و 6 و 7 و 8 تصویر اصلی که و بیت های تصویر دوم ، عمل نهان نگاری تصویر دوم در تصویر اول را انجام می دهیم.
<br/>
این عمل به ازای هر سه بعد دو تصویر تکرار می شود تا تصویر دوم در bit plane های 0 , 1 , 2 تصویر اصلی قرار داده شود .
<br/>
در انتها مجدد مقدار میانگین تمام مقادیر پیسکل های تصویر نتیجه را محاسبه نموده و به نام Stego_image در خروجی چاپ می کنیم .
خواهیم دید که دو تصویر با وجود شباهت ظاهری، میانگین مقادیر پیکسل هایشان متفاوت از هم است و این نشان می دهد که تصویر شاید در ظاهر تغییر نکرده باشد ولی در باطن تغییر کرده است.
![steganography](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/18/steganography.PNG)
<br/>
تغييرات را ميتوان با توجه به تفاوت موجود بين ميانگين مقادير پيكسل هاي دو تصوير دريافت.
<br/>
![average](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/18/average.PNG)
<br/>
در صورت **اختلاف ابعاد دو تصویر** کافیست اگر اندازه تصویر دوم بزرگتر است آن را Resize کنیم در غیر این صورت موردی ندارد . 
<br/>
```
%Resize
[x1,y1,~] = size(cover);
[x2,y2,~] = size(stego);
if x2  x1  y2  y1
    scale = min([x1x2,y1y2]);
    msg  = imresize(msg ,scale);
    [x2,y2,~] = size(msg);
end
```
این کار را با تقسیم ابعاد تصویر اول بر تصویر دوم انجام می دهیم اگر ای min 
این دو مقدار، مقداری بین 0 و 1 بود تصویر دوم از تصویر اول کوچکتر است ، اگر بزرگتر از 1 باشد تصویر دوم بزرگتر از تصویر اول 
بوده و براساس این scale تغییر سایز داده می شود.  
<br/>
<br/>
برای  **فشرده سازی تصویر** اولیه  کافیست bit plane بیت های کم ارزش را که اطلاعات زیادی درون خود ندارند را حذف و bit plane بیت های ارزشمند را نگه داریم.
<br/>
من در ادامه تصویر فشرده ای را ایجاد کردم که با bit plane های 8و7و6و5 ایجاد شده و bit plane های کم ارزش را من 0و1و2و3و4 در نظر گرفتم . به همین دلیل 240 قرار دادم چون 128+64+32+16 = 240 است .
```
%compression
image = imread('Lenna.png'); 
[m,n,p] = size(image)
for i = 1:m
    for j = 1:n
        for k = 1:p
            new_image(i,j,k) = bitand(image(i,j,k),240);
        end
    end
end
figure(3), imshow(new_image); title('compressed image');
```
در نهایت تصویر فشرده شده را نمایش می دهیم . این تصویر تنها شامل bit plane های 6و7و8و9 است .
<br/>
![compression](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/18/compression.PNG)
<br/>
#### نمایش هیستوگرام تصویر اصلی و تصویر فشرده شده:
```
%Histogram
figure(4);
subplot(221),imshow(image);title('Original Image');
subplot(222), imhist(image), title('Original Imge');
subplot(223),imshow(new_image);title('Compressed Image');
subplot(224), imhist(new_image), title('Compressed image');
```
مي توانستيم از تابع هستوگرامي كه در تمارين قبلي به صورت دستي نوشتيم نيز استفاده كنيم ولي من از تابع آماده آن استفاده كردم.
<br/>
و نتیجه :
![Histogram](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/18/Histogram.PNG)
<br/>
**دلیل تفاوت این دو هیستوگرام** این است که در تصویر فشرده سازی شذه ما بیت های با ارزش های 0و1و2و3و4 را برداشته و صفر کردیم بنابراین تمام مقادیر بین 0 تا 255 موجود نیست و تنها برخی از این مقادیر باقی مانده است به همین دلیل هیستوگرام ها متفاوت از همند .
<br/>
**افزایش کنتراست** می تواند اتفاق بیفتد زمانی که ما bit plane های بیشتری را نگه داریم.هر چه تعداد bit plane ها بیشتر ، کیفیت تصویر به تصویر واقعی نزذیک تر است .
<br/>
در ادامه هيستوگرام هاشان را هموار می کنیم و خروجی آن ها را نمایش می دهیم .
```
%Histogram Equalization
figure (5);
heq_img = histeq(image);
heq_recon = histeq(new_image);
subplot(321),imshow(heq_img);title('Equalized Original Image');
subplot(322), imshow(heq_recon), title('Equalized Compressed Imge');
```
![Histogram_Equalization](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/18/Histogram%20Equalization.PNG)
