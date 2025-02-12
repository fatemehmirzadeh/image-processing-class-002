<div dir="rtl" align="justify">
<h3>در مورد روش های تولید تصویر توسط هوش مصنوعی (الگوریتم GAN) تحقیق کنید و یک خلاصه را در فرمت مارک داون ایجاد کنید.
</h3><br/>
  <h3>
  تعریف شبکه GAN (Generative Adversarial Networks)
  </h3><hr/>
شبکه های GAN که به آن ها شبکه های مولد متخاصم نیز میگویند با استفاده از معماری شبکه های عصبی کانولوشنی قادرند تا از مجموعه ای از تصاویر (دیتاست) یاد بگیرد و تصاویری مشابه تصاویر واقعی اما کاملاً جدیدی که در دیتاست موجود نیست را تولید کند. در واقع این شبکه وظیفه یادگیری بدون نظارت را در یادگیری ماشین انجام می‌دهند این شبکه برای اولین بار توسط IanGoodfellow در سال 2014 معرفی شد.
  این شبکه‌ها شامل دو مدل هستند که به طور خودکار، الگوهای موجود در داده‌های ورودی را کشف کرده و یاد می‌گیرند. این دو مدل با نام‌های مولد (Generator) و متمایزگر (Discriminator) شناخته می‌شوند.
  <br/>
  
 <h3>
  کاربرد شبکه GAN
  </h3><hr/>
  شبکه های عصبی GAN می‌توانند تصاویری مانند چهره انسان تولید کنند که کاملا ساختگی هستند. چهره‌هایی که ممکن است در دنیای واقعی وجود نداشته باشند. به تصاویر زیر نگاه کنید، اینها تصاویری هستند که GAN تولید کرده و وجود خارجی ندارند.
  
  از جمله برجسته‌ترین این مسائل، «تبدیل تصویر به تصویر« (Image to Image Translation) است. به عنوان مثالی از تبدیل تصویر به تصویر، می‌توان به تبدیل تصاویر تابستان به زمستان، تصاویر روز به شب و تولید تصاویر فوتورئالیستیک از اشیا، صحنه‌ها و افراد اشاره کرد. این تصاویر به گونه‌ای تولید می‌شوند که حتی انسان‌ها نیز نمی‌توانند بگویند تصاویر جعلی هستند. از دیگر کاربرد های شبکه های GAN تولید تصاویر جدید براساس دیتا های آموزش دیده موجود در دیتاست و ترمیم تصویری که ممکن است بخشی از تصویر حذف و یا مسدود شده باشد.
  
  <br/>
  <h3>
  
  اجزای اصلی شبکه GAN:
  </h3><hr/>
دو جزء اساسی در GAN وجود دارد که سعی در بهبود شبکه برخلاف یکدیگر دارند:

مولد: تولید کننده که با خلق تصاویر بسیار نویزدار از دیتای ورودی که اغلب بصورت نویز گوسی به شبکه داده می شود کار خود را شروع می نماید. وظیفه ای که مولد باید در ادامه انجام دهد این است که تصاویری، تا حد ممکن حقیقی تولید کند که به اندازه ی کافی طبیعی جلوه کنند.

متمایز دهنده: تشخیص دهنده که وظیفه آن، تشخیص تصاویر حقیقی از تصاویر جعلی است. بدین صورت که با نگاه کردن به تصاویر تولیدی از مولد باید تشخیص دهد که تصاویر به اندازه ی کافی طبیعی جلوه می کنند یا خیر. این وظیفه را با مقایسه ی بین تصاویر دیتاست و تصاویر تولید شده توسط مولد انجام می دهد. مولد (تولید کننده) را به اختصار G و تمیز دهنده(تشخیص دهنده) را نیز D می نامیم.
  
  <div align="center">
    <img src="img1.jpg" width="80%">
  </div>
  <h3>
    معماری شبکه های GAN
  </h3><hr/>
  <div align="center">
    <img src="img2.jpg" width="80%">
  </div>
  شبکه عصبی GAN از دو شبکه D و G تشکیل شده است. شبکه G نقش مولد را دارد و داده تولید می‌کند. شبکه D نقش جداسازی داده واقعی و داده تولیدی از هم را دارد. یکی پس از دیگری مجموعه‌ای داده جعلی/واقعی به شبکه D داده می‌شود و این شبکه به جداسازی داده‌ها می‌پردازد.
  
  <h3>
    انواع شبکه های GAN
  </h3><hr/>
1- شبکه های مولد متخاصم وانیلا ( شبکه ی اصلی معرفی شده توسط ایان گودفلو) (The Vanilla GAN)

<br/><br/>
  ۲- شبکه های مولد متخاصم عمیق کانولوشنی (Deep Convolutional Generative Adversarial Networks)
استفاده از شبکه های عصبی کانولوشنی استفاده شده در یادگیری بدون ناظر هم در مولد و هم در تمیز دهنده.
برای مثال در شبکه ی توسعه داده شده توسط Nvidia برای تولید تصاویر که در شبکه ی تمیز دهنده از CNN برای تشخیص تصویر چهره ی حقیقی از غیر حقیقی مورد استفاده قرار گرفته است و در شبکه ی مولد برای تولید تصویر صورت از یک سری دیتای اولیه ( در اینجا نویز گوسی) و با استفاده از DeCNN تصویر حقیقی تر و با کیفیت بالاتری تولید گردیده است.
  <br/><br/>

۳- شبکه ی مولد متخاصم شرطی (Conditional Generative Adversarial Networks):
می توان به شبکه امر کرد که چه نوع دیتایی تولید نماید. به عنوان مثال دیتاست اعداد ۰ تا ۹ را در نظر بگیرید که هر کدام از آنها در شبکه ی مولد متخاصم معمول شبکه قادر به تولید تصاویر رندوم از اعداد است. اما در این نوع شبکه ما می توانیم با تغذیه ی ورودی C یک شرط برای آن تعریف نماییم تا تنها مورد دلخواهمان را تولید کند.
  
   <div align="center">
    <img src="img3.jpg" width="80%">
  </div>
  
  ۴- شبکه ی مولد متخاصم اطلاعات (Info Generative Adversarial Networks)
این شبکه علاوه بر توانایی تولید تصاویر قادر به یادگیری متغیرهای معنی دارِ پنهان موجود در تصویر بدون وجود هیچگونه برچسب در دیتای ورودی می باشد. به عنوان مثال در تصاویر آموزش داده شده ی اعداد ۰ تا ۹ موجود در دیتاست قادر است زاویه ی اعداد و یا ضخامت و حرکت اعداد را بدون وجود هیچگونه لیبل مشخصی در این خصوص، فرا گرفته و به تولید تصاویر با ویژگی های جدید نامبرده نماید.
همانطور که در تصویر نشان داده شده است هر ردیف که به پایین می آییم ضخامت و یا زاویه و حرکت اعداد تغییر می نماید.
  
   <div align="center">
    <img src="img4.jpg" width="80%">
  </div>
  
  ۵- شبکه های مولد متخاصم Wasserstein :
در شبکه های موجود، امکان اشتباه در بخش تابع هدف تمیزدهنده که به منظور افزایش loss، به دلیل اینکه هیچ نشانه ی واضحی برای توقف نیاز به نگاه به نمونه های دیتاست و تشخیص حقیقی بودن دیتای تولیدی از دیتاست در روش های متداول مورد استفاده برای حداقل کردن Loss مولد وجود ندارد( روش Jenson-Shannon Divergence). در حقیقت این روش، روشی برای اندازه گیری شباهت میان دو توزیع احتمال است .
روش جدید معرفی شده در این الگوریتم توانایی پیداکردن فاصله ی نقاط در توزیع احتمال را با استفاده از فاصله ی موجود در تصاویر دیتاست دارد. بدین صورت شبکه قادر به یادگیری تا رسیدن به همگرایی می¬شود که در نتیجه ی آن، تصاویری با کیفیت بالاتر نمونه های تولیدی توسط مولد را شاهد خواهیم بود.
  <br/><br/>

۶- شبکه های مولد متخاصم توجه (Attention Generative Adversarial Networks):
این شبکه ها توسط مایکروسافت به منظور تولید تصاویر از متن از طریق پردازش زبان طبیعی خلق شدند و عملکرد خارق العاده ای مانند تولید بخشی از تصویر از یک لغت تنها را دارند. بدین صورت که با استفاده از الگوریتم بخشی از تصویر با کیفیت بالا تولید شده و به سایر بخش ها کیفت یا توجه کمتری داده می شود؛ بنابراین توجه بر قسمت خاصی از تصویر اتفاق می افتد. با واضح شدن لغات و افزایش درک شبکه از متن ( شناخته شدن موضوع توسط شبکه ) بخش های اطراف و محیط پیرامون تصویر در بخش توجه شده واضح تر شده و به تصویر مرتبط تری با لغات موجود در متن دست پیدا خواهد کرد.
  
  <br/>

۷- شبکه های مولد متخاصم چرخه (Cycle Generative Adversarial Networks):
تولید تصاویر جفت برای شبکه های مولد متخاصم کار دشواری نمی باشد. بطور مثال تولید تصویر واقعی از یک شکلِ کفشِ نقاشی شده! اما کار زمانی مهیج می شود که یک تصویر منظره از طبیعتی تابستانی داشته باشیم و بتوانیم طبیعت تصویر را تغییر دهیم و همان منظره ی زیبای تابستانی را به تصویری زمستانی تبدیل نماییم . الگوریتم سیکل یا چرخه بدین منظور و موارد مشابهی از این دست، طراحی شده است.

</div>


