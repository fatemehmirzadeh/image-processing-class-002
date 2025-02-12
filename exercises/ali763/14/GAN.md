**سوال 14**
<br>
شبکه GAN چیست؟

شبکه مولد تخاصمی (Generative Adversarial Network) یا به اختصار GAN، در سال 2014 توسط یان گودفلو (Ian J. Goodfellow) و نویسندگان همکار او معرفی شد. GAN‌ها وظایف یادگیری بدون نظارت را در یادگیری ماشین انجام می‌دهند. این شبکه‌ها شامل دو مدل هستند که به طور خودکار، الگوهای موجود در داده‌های ورودی را کشف کرده و یاد می‌گیرند. این دو مدل با نام‌های مولد (Generator) و متمایزگر (Discriminator) شناخته می‌شوند

<br>
<div dir="rtl">
مولد و متمایزگر، برای بررسی، ضبط و تکرار تغییرات درون مجموعه داده با یکدیگر رقابت می‌کنند. می‌توان از GAN‌ها برای تولید نمونه‌های جدیدی که به طرز قابل قبولی از مجموعه داده اصلی قابل تهیه هستند، استفاده کرد.

در شکل زیر، نمونه‌ای از GAN نشان داده شده است. یک پایگاه داده حاوی اسکناس‌های واقعی 100 روپیه‌ای وجود دارد. شبکه عصبی مولد، اسکناس‌های جعلی 100 روپیه‌ای را تولید می‌کند. شبکه متمایزگر، به شناسایی اسکناس‌های واقعی و جعلی کمک می‌کند.
<br>
صنایع خاصی وجود دارد که برای آموزش مدل های عمیق تر و عمیق تر به داده های بیشتری نیاز دارند. صنعت بهداشت و درمان نمونه خوبی است. مدلهای مولد در اینجا می توانند نقش حیاتی ایفا کنند زیرا می توانند برای تولید داده های جدید مورد استفاده قرار گیرند. از این تصاویر ایجاد شده می توان برای افزایش اندازه مجموعه داده شما استفاده کرد.
<br>
<br>

 ![image](https://user-images.githubusercontent.com/56272972/166082129-4d7b6ed7-7798-455e-889f-c4d674ceaf13.png)

<br>
  مولد چیست؟

یک شبکه عصبی است که داده‌های جعلی تولید می‌کند تا متمایزگر توسط آن‌ها آموزش ببیند. مولد یاد می‌گیرد که داده‌های قابل قبول تولید کند. مثال ها/نمونه‌های تولید شده، برای متمایزگر، نمونه‌های منفی آموزشی به حساب می‌آیند. مولد، یک بردار نویز تصادفی با طول ثابت را به عنوان ورودی می‌گیرد و یک نمونه تولید می‌کند.
![image](https://user-images.githubusercontent.com/56272972/166082219-bcde5d59-12f6-4d11-b4e8-217fa99a02c4.png)
هدف اصلی مولد این است که متمایزگر را طوری فریب دهد که خروجی خود را با عنوان “واقعی” دسته بندی کند. قسمتی از GAN که مولد را آموزش می‌دهد شامل موارد زیر است:
  <br>
  بردار ورودی نویزی
  <br>
  شبکه مولد، که ورودی تصادفی را به یک نمونه داده تبدیل می‌کند
  <br>
  شبکه متمایزگر، که داده‌های تولید شده را دسته بندی می‌کند
  <br>
  تلفات مولد، که مولد را به دلیل احمق پنداشتن متمایزگر، مجازات می‌کند!
   <br>
  از روش پس انتشار (backpropagation) برای تنظیم هر وزن در جهت مناسب با محاسبه تاثیر وزن بر خروجی استفاده می‌شود. همچنین از این روش برای به دست آوردن گرادیان استفاده می‌شود و این گرادیان‌ها می‌توانند به تغییر وزن‌های مولد کمک کنند.
![image](https://user-images.githubusercontent.com/56272972/166082436-cb1fb0c4-4228-4bb2-8abb-6d54a35c76af.png)
  <br>
   متمایزگر چیست؟

متمایزگر (Discriminator) یک شبکه عصبی است که داده‌های واقعی را از داده‌های جعلی ایجاد شده توسط مولد تشخیص می‌دهد. داده‌های آموزشی متمایزگر از دو منبع مختلف به دست می‌آیند:
<br>
  نمونه‌های واقعی داده‌ها، مانند تصاویر واقعی پرندگان، انسان‌ها، اسکناس‌های ارزی و غیره، توسط متمایزگر به عنوان نمونه‌های مثبت در طول آموزش استفاده می‌شوند.
<br>
نمونه‌های جعلی ایجاد شده توسط مولد، به عنوان نمونه‌های منفی در طول فرایند آموزش استفاده می‌شوند.
<br>
  ![image](https://user-images.githubusercontent.com/56272972/166082574-f63bf050-8c01-4b0d-9167-bf79e6e4d72c.png)
  <br>
در حین آموزش، متمایزگر به دو تابع تلفات (loss function) متصل است. در طول آموزش شبکه متمایزگر، از تلفات مولد چشم پوشی شده و فقط از تلفات متمایزگر استفاده می‌شود.

متمایزگر، در حین فرآیند آموزش، داده‌های واقعی و داده‌های جعلی دریافتی از مولد را دسته بندی می‌کند. در صورت دسته بندی نادرست یک نمونه داده واقعی به عنوان نمونه جعلی یا برعکس، توسط تلفات متمایزگر مجازات می‌شود. متمایزگر، وزن‌های خود را با پس انتشار از تلفات متمایزگر در طول شبکه خود، به روز می‌کند.
  
  <br>
  GANها چگونه کار می‌کنند؟
GAN از دو شبکه عصبی تشکیل شده است. یک مولد G(x) و یک متمایزگر D(x). هر دوی آن‌ها یک بازی خصمانه (adversarial) انجام می‌دهند. هدف مولد این است که با تولید داده‌هایی مشابه داده‌های موجود در مجموعه آموزشی، متمایزگر را فریب دهد. متمایزگر سعی خواهد کرد با شناسایی داده‌های جعلی از داده‌های واقعی فریب نخورد. هر دو به طور همزمان برای یادگیری و آموزش داده‌های پیچیده مانند فایل‌های صوتی، ویدئویی یا تصویری کار می‌کنند.
شبکه مولد یک نمونه را می‌گیرد و یک نمونه جعلی از داده‌ها را تولید می‌کند. مولد آموزش دیده است تا احتمال بروز اشتباه توسط شبکه متمایزگر را افزایش دهد.



  در شکل زیر، نمونه‌ای از GAN نشان داده شده است که سعی می‌کند واقعی یا جعلی بودن اسکناس‌های 100 روپیه‌ای را تشخیص دهد. بنابراین، ابتدا یک بردار نویز یا بردار ورودی به شبکه مولد تغذیه می‌شود. مولد، اسکناس‌های جعلی 100 روپیه‌ای تولید می‌کند. تصاویر واقعی اسکناس‌های 100 روپیه‌ای که در یک پایگاه داده ذخیره شده، به همراه اسکناس‌های جعلی، به متمایزگر منتقل می‌شوند. در ادامه، متمایزگر، اسکناس‌های واقعی را از اسکناس‌های جعلی متمایز و دسته بندی می‌کند.
 
![Screen Shot 1401-02-10 at 04 58 14](https://user-images.githubusercontent.com/56272972/166083318-b2a22ccc-4402-4afc-a25c-43f5b729ffad.png)
   <br>
مراحل آموزش GAN
<br>
  تعریف مسئله
  <br>
انتخاب معماری GAN
<br>
آموزش متمایزگر با داده‌های واقعی
  <br>
تولید ورودی‌های جعلی توسط مولد
  <br>
آموزش متمایزگر با داده‌های جعلی
  <br>
 آموزش مولد با خروجی متمایزگر
<br>
 <br> 
  انواع شبکه های gan
<br>GANهای وانیلی:
Vanilla GANs دارای یک فرمول بهینه سازی حداقل حداکثر (min-max) هستند که در آن، متمایزگر یک دسته بندی باینری انجام می‌دهد و از تلفات آنتروپی متقابل سیگموئید (sigmoid cross-entropy) هنگام بهینه سازی استفاده می‌کند. مولد و متمایزگر در GANهای وانیلی، پرسپترون‌های چند لایه هستند. این الگوریتم سعی می‌کند معادله ریاضی حاکم بر GANها را با استفاده از گرادیان نزولی تصادفی بهینه کند.


  <br>
  GANهای کانولوشنی عمیق:
  <br>
  Deep Convolutional GANs یا به اختصار DCGANs، از شبکه‌های عصبی کانولوشنی به جای شبکه‌های عصبی وانیلی در مولد و متمایزگر پشتیبانی می‌کنند. این شبکه‌ها از پایداری بیشتری برخوردار هستند و تصاویری با کیفیت بهتر تولید می‌کنند.
مولد، مجموعه‌ای از لایه‌های کانولوشنی با کانولوشن‌های دارای گام کسری (fractional-strided) یا کانولوشن¬های ترانهاده‌ای (transpose) است، بنابراین تصویر ورودی را در هر لایه کانولوشنی، رو به بالا نمونه برداری (up-sample) می‌کند.
متمایزگر، مجموعه‌ای از لایه‌های کانولوشنی با کانولوشن‌های دارای گام (strided) است، بنابراین تصویر ورودی را در هر لایه کانولوشنی، رو به پایین نمونه برداری (down-sample) می‌کند.


  <br>
  GANهای شرطی:
  <br>
  GANهای وانیلی را می‌توان با استفاده از اطلاعات اضافی و برای تولید نتایج بهتر، به مدل‌های شرطی بسط داد. در Conditional GAN یا به اختصار CGAN، یک پارامتر اضافی “y” برای تولید داده‌های مربوطه به مولد اضافه می‌شود. برچسب‌ها به عنوان ورودی به متمایزگر تغذیه می‌شوند تا به تشخیص داده‌های واقعی از داده‌های جعلی تولید شده کمک کنند


  <br>
  <br>
  GANهای با وضوح عالی:
  <br>
  Super Resolution GANs یا به اختصار SRGANs، از شبکه‌های عصبی عمیق به همراه یک شبکه تخاصمی برای تولید تصاویر با وضوح بالاتر استفاده می‌کنند. SRGAN‌ها هنگامی که تصویری با وضوح پایین به آن‌ها داده می‌شود، تصویری واقع گرایانه با رزولوشن بالا تولید می‌کنند.
  <br>
  <br>
  کاربردهای GAN
  <br>
  با کمک DCGANها می‌توانید تصاویر شخصیت‌های کارتونی را به منظور تولید چهره شخصیت‌های انیمه‌ای  آموزش داد.
  <br>
  GAN‌ها را می‌توان بر روی تصاویر انسان‌ها آموزش داد تا چهره‌هایی واقع گرایانه تولید کنند. چهره‌هایی که در تصویر زیر مشاهده می‌کنید با استفاده از GANها ایجاد شده‌اند و در واقعیت وجود ندارند.
  <br>
  GAN‌ها می‌توانند تصاویری واقع گرایانه از توصیف متنی اشیائی نظیر انسان‌ها، پرندگان و دیگر حیوانات بسازند. ما یک جمله به عنوان ورودی به شبکه می‌دهیم و چندین تصویر متناسب با آن توصیف تولید می‌کنیم.
  <br>
  
