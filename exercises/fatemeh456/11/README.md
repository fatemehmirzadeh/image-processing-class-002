### Exercise 11
```
clc;
clear;
close all;
img = imread('airplane.png');
gray_img=rgb2gray(img); 
imshow(gray_img)
[x y]=size(gray_img);
drawcircle('Center',[x y]/2,'Radius',x/8);
```
#### بررسی کد :
جهت اجرای بهتر کدها در متلب، بهتر است سه دستور اول در ابتدای هر برنامه نوشته شود. 
سپس تصوير را از تصاوير benchmark انتخاب، خوانده و آن را خاكستري مي كنيم .
<br/>
 ![Source_Image](https://raw.githubusercontent.com/semnan-university-ai/image-processing-class-002/main/exercises/fatemeh456/11/airplane.png?token=GHSAT0AAAAAABPAIYAJ7KEBYUT2LZI7DRWUYSJ5YJQ)
```
clc;
clear;
close all;
img = imread('airplane.png');
gray_img=rgb2gray(img); 
```
حالا تصوير را نمايش داده و در ادامه مي خواهيم دايره اي در مركز آن ايجاد نماييم .
براي اين كار ابتدا سايز تصوير را نگه مي داريم .
<br/>
به كمك تابع drawcircle مي خواهيم دایره را ایجاد کنیم .
اين تابع يك شي به شكل دايره ايجاد مي كند كه اندازه و موقعيت اين دايره را بعنوان ورودي براي آن مشخص مي كنيم .
<br/>
ابتدا موقعيت مركز دايره را مشخص مي كنيم چون قرار است در مركز تصوير يك دايره داشته باشيم كافيست اين نقطه مركزي را 
در موقعيت [x y]/2 قرار دهيم تا هم عمودي و هم افقي در وسط قرار گيرد .
<br/>
در ادامه بايد مشخص كنيم كه دايره با چه ابعادي رسم شود كه ما در كد خود 
 مشخص كرده ايم كه دايره ايجاد شده 1.8 ابعاد تصوير ما را داشته باشد . هر چه 
بخواهيم دايره ما بزرگتر باشد بايد x يا y را بر عدد كوچكتري تقسيم كنيم مثلا x/2 دايره بزرگتري را رسم خواهد كرد .
<br/>
اين دايره قابليت بزرگ و كوچك شدن بر روي تصوير را دارد.
```
imshow(gray_img)
[x y]=size(gray_img);
drawcircle('Center',[x y]/2,'Radius',x/8);
```
در نهايت تصوير زير حاصل خواهد شد :  
 
 ![Result](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/fatemeh456/11/Result.PNG)
