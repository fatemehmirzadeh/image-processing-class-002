# task16

## change a RGB image to a gray image

در این کد قصد داریم تصویر RGB را به یک تصویر خاکستری تبدیل نماییم. برای این روش از یک سری اعدادی خاص که توسط محققان حاصل شده است استفاده می کنیم. این اعداد به ترتیب برای رنگ قرمز برابر با 0.299 برای رنگ سبز برابر با 0.577 و برای رنگ آبی برابر با 0.144 است که در ادادمه با پیمایش تکتک پیکسل های تصویر ورودی این عملیات خاکستری سازی صورت می‌گیرد:
```

clc;
close all;
clear all;

img1=imread("photo_2022-03-30_21-00-33.jpg");
figure(1);
imshow(img1);

row=size(img1,1);
col=size(img1,2);
Channels=3;
img2=zeros(row,col,Channels);

```

در این دستورات تصویر ورودی دریافت شده و در figure1 نشان داده می شود. سپس سایز آن با دستور size حاصل شد است. 

```

1)for i=1:row
2)    for j=1:col
3)        for k=1:Channels
4)            img2(i,j,k)= .299*img1(i,j,1)+.577*img1(i,j,2)+.144*img1(i,j,3);
5)        end
6)    end
7)end
8)img2=uint8(img2);
9)figure(2);
10)imshow(img2)

```

در این دستور با پیمایش تک تک پیکسل ها  دستور خط 4 پیاده سازی می شود که برای هر کانال عدد منحصر به فرد خودش در نظر گرفته شده است. در نهایت با تبدیل فرمت ماتریس تصویر به uint8، تصویر خروجی در figure(2) نشان داده می وشود.


### input

![image](https://user-images.githubusercontent.com/95109502/167243258-dc31f3f9-46cf-43fc-99a1-39d3752864a1.png)

## output

![image](https://user-images.githubusercontent.com/95109502/167243198-83d8101d-a1ca-4b33-94d3-9a81aa79ce09.png)
