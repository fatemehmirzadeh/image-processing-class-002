### Exercise 6
```
clc;
clear;
close all;
src_img = imread('flower.png') ;
src_img = rgb2gray(src_img) ;
[x y] = size(src_img);
sqrt_img = double(src_img);
for i = 2: x-1
    for j = 2: y-1
       sqrt_img(i,j)= sqrt(double(src_img(i+1,j)))+sqrt(double(src_img(i,j-1)))+sqrt(double(src_img(i,j+1)))+sqrt(double(src_img(i-1,j)));     
    end
end
figure, imshow(uint8(src_img));
figure, imshow(uint8(sqrt_img));
```
<div dir="rtl">
#### توضیحات :
<br/>
جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود . 
<br/>
ابتدا تصوير را خوانده و آن را خاكستري مي كنيم. 
تصوير ابتدايي مان به صورت زير مي باشد :
<br/>
</div>
![Source_Image](https://raw.githubusercontent.com/semnan-university-ai/image-processing-class-002/main/exercises/fatemeh456/6/flower.png?token=GHSAT0AAAAAABPAIYAIPA4X6X3TDONAJ7BOYSHJFQQ)
<div dir="rtl">
سپس سايز تصوير را در قالب آرايه اي نگه مي داريم . 
<br/>
در مرحله بعد ، براي اينكه بتوانيم از تابع sqrt استفاده كنيم بايد ابتدا تصوير را از حالت unit 8  به double‌ تبديل كنيم .
در انتها مجدد تصوير حاصل را به فرمت unit 8 مي بريم .
<br/>
حال به كمك حلقه for و حركت بر روي تصوير ابتدايي، سعي مي كنيم تصوير حاصل را در متغير جديدي به نام sqrt_img ذخيره كنيم .
چون صورت سوال از ما همسايگي چهار گانه خواسته است بنابراين بايد از 4 پيكسل بالا ، پايين ، چپ و راست هر پيكسل به عنوان همسايه آن استفاده كنيم.
<br/>
مقدار هر پيكسل با جمع جذر 4 همسايه آن به دست آمده و در نهايت تصوير نهايي با نام sqrt_img حاصل خواهد شد .
<br/>
در نهايت تصاويررا به نمايش در خواهيم آورد كه براي اين كار نياز است مجدد تصوير را به unit8 تبديل مي كنيم و سپس تصويري به صورت زير خواهيم داشت: 
</div>
<br/>
![Result](https://raw.githubusercontent.com/semnan-university-ai/image-processing-class-002/main/exercises/fatemeh456/6/Result.PNG?token=GHSAT0AAAAAABPAIYAIPZKNAMPGY2BONTCYYSHJGMA)