<div dir="rtl">

### لیست 20 دیتاست معروف و بزرگ حوزه ی تصویر را جمع آوری کنید و در مورد آن ها چند پاراگراف از زبان خودتان توضیح دهید. (کمیت، کیفیت، دسته بندی و ...)

  مجموعه داده ها به سه دسته تقسیم می شوند - پردازش تصویر، پردازش زبان طبیعی، و پردازش صوتی/گفتار.
  </br>
### MNIST
  </br>
  
  ![mnist](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/mnist.JPG)
  
   </br>
   
  الف) MNIST یکی از محبوب ترین مجموعه داده های یادگیری عمیق است. این مجموعه داده ای از ارقام دست نویس است و شامل یک مجموعه آموزشی از 60000 نمونه و یک مجموعه آزمایشی از 10000 نمونه است. این پایگاه داده خوبی برای آزمایش تکنیک های یادگیری و الگوهای تشخیص عمیق در داده های دنیای واقعی است و در عین حال حداقل زمان و تلاش را برای پیش پردازش داده ها صرف می کند. 
 
 </br>
 حجم: 50 مگابایت
</br>
تعداد رکورد: 70000 تصویر در 10 کلاس
  </br>
  
### MS-COCO

![mscoco](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/ms-coco.JPG)

   </br>
   
ب) COCO یک مجموعه داده در مقیاس بزرگ و غنی برای تشخیص اشیا، تقسیم بندی و زیرنویس است. چندین ویژگی دارد:

* تقسیم بندی شی
* شناخت در زمینه
* تقسیم بندی چیزهای سوپرپیکسلی
* تصاویر 330K (بیش از 200 هزار برچسب دار)
* 1.5 میلیون نمونه شی
* 80 دسته شی
* 91 دسته موارد
* 5 زیرنویس در هر تصویر
* 250000 نفر با نکات کلیدی
    </br>
حجم: ~25 گیگابایت (فشرده شده)
</br>
تعداد رکوردها: 330 هزار تصویر، 80 دسته شی، 5 عنوان در هر تصویر، 250000 نفر با نکات کلیدی    
     </br>
     
### ImageNet

![img-net](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/img-net.JPG)

      
پ) ImageNet مجموعه ای از تصاویر است که بر اساس سلسله مراتب WordNet سازماندهی شده اند. WordNet شامل تقریباً 100000 عبارت است و ImageNet به طور میانگین حدود 1000 تصویر را برای نشان دادن هر عبارت ارائه کرده است.      

</br>
       
حجم: 150 گیگ
</br>
تعداد رکورد: تعداد کل تصاویر: ~1,500,000; هر کدام با جعبه های محدود کننده متعدد و برچسب های کلاس مربوطه
        </br>
        
### Open Images Dataset

![oid](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/oid.JPG)

ت) Open Images مجموعه ای از تقریباً 9 میلیون URL برای تصاویر است. این تصاویر با برچسب‌هایی در سطح تصویر حاشیه‌نویسی شده‌اند که کادرهای محدودکننده هزاران کلاس را در بر می‌گیرد. مجموعه داده شامل یک مجموعه آموزشی از 9,011,219 تصویر، یک مجموعه اعتبارسنجی از 41,260 تصویر و یک مجموعه آزمایشی از 125,436 تصویر است.
         </br>
 حجم: 500 گیگابایت (فشرده)
</br>
تعداد رکورد: 9,011,219 تصویر با بیش از 5k برچسب
          </br>
          
 ### VisualQA
 
 ![vql](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/vqa.JPG)
 
  ث) VQA مجموعه داده ای است که حاوی سوالات باز درباره تصاویر است. این سوالات نیاز به درک بینش و زبان دارند. برخی از ویژگی های جالب این مجموعه داده عبارتند از:

* 265016 تصویر (COCO و صحنه های انتزاعی)
* حداقل 3 سوال (به طور متوسط 5.4 سوال) در هر تصویر
* 10 پاسخ حقیقت پایه در هر سوال
* 3 پاسخ قابل قبول (اما به احتمال زیاد نادرست) در هر سوال
* معیار ارزیابی خودکار         
            </br>
  حجم: 25 گیگابایت (فشرده)
</br>
تعداد سوابق: 265016 تصویر، حداقل 3 سوال در هر تصویر، 10 پاسخ واقعی به ازای هر سوال
             </br>
             
 ### The Street View House Numbers (SVHN)
 
 ![svhn](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/svhn.JPG)
 

  ج) این یک مجموعه داده تصویری در دنیای واقعی برای توسعه الگوریتم های تشخیص اشیا است. این نیاز به حداقل پیش پردازش داده دارد. شبیه به مجموعه داده MNIST ذکر شده در این لیست است، اما داده های برچسب گذاری شده بیشتری دارد (بیش از 600000 تصویر). داده ها از شماره خانه های مشاهده شده در نمای خیابان گوگل جمع آوری شده است. 
               </br>
 حجم: 2.5 گیگابایت
</br>
تعداد رکورد: 630420 تصویر در 10 کلاس              
                </br>
 ### CIFAR-10
 
 ![cifar](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/cifar.JPG)
 

 چ) این مجموعه داده دیگری برای طبقه بندی تصاویر است. این شامل 60000 تصویر از 10 کلاس است (هر کلاس به صورت یک ردیف در تصویر بالا نشان داده شده است). در مجموع 50000 تصویر آموزشی و 10000 تصویر تست وجود دارد. مجموعه داده به 6 قسمت تقسیم می شود - 5 دسته آموزشی و 1 دسته آزمایشی. هر دسته 10000 تصویر دارد.                
                  </br>
  حجم: 170 مگابایت
</br>
تعداد رکورد: 60000 تصویر در 10 کلاس
                   </br>
 ### Fashion-MNIST
 
 ![fmnist](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/fmnist.JPG) 
 

 ح) Fashion-MNIST از 60000 تصویر آموزشی و 10000 تصویر آزمایشی تشکیل شده است. این یک پایگاه داده محصولات مد مانند MNIST است. توسعه دهندگان بر این باورند که MNIST بیش از حد مورد استفاده قرار گرفته است، بنابراین آنها این را به عنوان جایگزینی مستقیم برای آن مجموعه داده ایجاد کردند. هر تصویر در مقیاس خاکستری است و با برچسبی از 10 کلاس مرتبط است.                   
                     </br>
  حجم: 30 مگابایت
</br>
تعداد رکورد: 70000 تصویر در 10 کلاس
</br>

### CompCars

![ccar](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/ccar.JPG)

خ) این مجموعه داده تصویری شامل 163 خودرو با 1716 مدل خودرو می‌شود که هر خودرو حول پنج ویژگی شامل تعداد صندلی، نوع خودرو، حداکثر سرعت و جابه‌جایی حاشیه‌نویسی و برچسب‌گذاری شده است.
</br>

### Oxford-IIIT Pet Images Dataset

![iiit](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/Oxford-IIIT%20Pet%20Images%20Dataset.png)

د) این مجموعه داده تصویر حیوان خانگی دارای 37 دسته با 200 تصویر برای هر کلاس است. تصاویر بر اساس مقیاس، ژست و نور متفاوت هستند، و دارای حاشیه نویسی حقیقت زمینی مربوط به نژاد، بازگشت سرمایه سر، و تقسیم بندی trimap در سطح پیکسل هستند.

</br>

### Indoor Scene Recognition

![indor](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/allIndoors.jpg)

ذ) این مجموعه داده برای هر کسی که مدلی را برای تشخیص مناظر داخلی آموزش می دهد بسیار تخصصی است. شامل 67 دسته بندی داخلی در 15620 تصویر است.
</br>


### Celebfaces

![celeb](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/celeb_a.png)

ر) این مجموعه داده تصویر دارای بیش از 200000 تصویر از افراد مشهور مورد علاقه شما است. هر کاماژ افراد مشهور دارای 40 حاشیه نویسی ویژگی است.
</br>

### Stanford Dogs Dataset

![dog](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/Stanford_Dogs.jpg)

ز) 20580 تصویر از سگ ها در 120 دسته نژاد منحصر به فرد با تقریباً 150 تصویر برای هر طبقه.
</br>

### Google’s Open Images

![open](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/Google%E2%80%99s%20Open%20Images.png)

ژ) با 9 میلیون URL فوق العاده، این یکی از بزرگترین مجموعه داده های تصویر در این لیست است که دارای میلیون ها تصویر حاشیه نویسی شده با برچسب در 6000 دسته است.
</br>

### Labelme

![lable](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/Labelme.png)

س) یکی از مجموعه داده های تصویر علوم کامپیوتر MIT که در ارتباط با آزمایشگاه هوش مصنوعی (CSAIL) ایجاد شده است، این یکی دارای 187240 تصویر، 62197 تصویر قبلاً مشروح شده در 658992 شی برچسب گذاری شده است.
</br>

### VisualGenome

![vg](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/VisualGenome.png)

ش) Visual Genome برای ارتباط زبان با مفاهیم تصویر سازمان‌یافته ایجاد شد و دارای یک پایگاه دانش بصری دقیق با ۱۰۸،۰۷۷ تصویر قبلی است.
</br>

### FERET

![feret](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/FERET.png)

ص) FERET (پایگاه داده فناوری تشخیص چهره) یک مجموعه داده تصویری است که شامل بیش از 14000 تصویر از چهره های حاشیه نویسی شده انسان است.
</br>

### Labelled Faces in the Wild

![wild](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/labelled%20faces%20in%20the%20wild.png)

ض) یک مجموعه داده تصویری با عنوان بیش از حد مناسب، چهره های برچسب گذاری شده در طبیعت دارای 13000 تصویر برچسب گذاری شده از چهره انسان است. مخصوصاً برای تشخیص چهره مفید است.
</br>

### Places

![places](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/Places.jpg)

ط) این مجموعه داده تصویر صحنه محور شامل 205 دسته صحنه منحصر به فرد با 2.5 میلیون تصویر است که بر اساس یک دسته برچسب گذاری شده اند.
</br>

### Flowers

![flower](https://github.com/semnan-university-ai/image-processing-class-002/blob/main/exercises/eveaskari/Exc%2009/Flowers.png)

ظ) این مجموعه داده تصویری که دارای گل‌هایی است که معمولاً در سراسر بریتانیا یافت می‌شود، شامل بیش از 102 دسته مختلف است که هر گل از حالت‌ها و تغییرات نوری متفاوت دیده می‌شود.

</br>
  </div>
