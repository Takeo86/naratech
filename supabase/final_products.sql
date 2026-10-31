insert into categories (name, slug) values ('سوییچ','switch'),('روتر','router') on conflict (slug) do nothing;

insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ سیسکو Catalyst 2960-X 24TS-L$t$, 'cisco-catalyst-2960x-24ts-l', $e$یکی از پرفروش‌ترین سوییچ‌های مدیریتی لایه ۲ سیسکو برای شبکه‌های سازمانی کوچک و متوسط. نرم‌افزار LAN Base مدیریت VLAN، QoS و امنیت پورت را فراهم می‌کند.$e$, $c$## معرفی
یکی از پرفروش‌ترین سوییچ‌های مدیریتی لایه ۲ سیسکو برای شبکه‌های سازمانی کوچک و متوسط. نرم‌افزار LAN Base مدیریت VLAN، QoS و امنیت پورت را فراهم می‌کند.

## مشخصات کلیدی
- ۲۴ پورت گیگابیت مسی
- ۴ پورت آپلینک SFP گیگابیت
- مدیریتی لایه ۲ (LAN Base)
- بدون PoE
- مناسب نصب در رک (۱U)

## کاربرد
مناسب لایه دسترسی (Access) در ادارات، شرکت‌ها و دانشگاه‌ها.

## قیمت تقریبی
**حدود ۲۰۰ تا ۴۵۰ دلار (بسته به نو یا استوک بودن)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '0 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ سیسکو Catalyst 2960-X 48TS-L$t$, 'cisco-catalyst-2960x-48ts-l', $e$نسخهٔ ۴۸ پورت خانوادهٔ 2960-X برای محیط‌هایی که تعداد کاربر بیشتری دارند. مدیریتی و پایدار است و در شبکه‌های ایران بسیار رایج است.$e$, $c$## معرفی
نسخهٔ ۴۸ پورت خانوادهٔ 2960-X برای محیط‌هایی که تعداد کاربر بیشتری دارند. مدیریتی و پایدار است و در شبکه‌های ایران بسیار رایج است.

## مشخصات کلیدی
- ۴۸ پورت گیگابیت مسی
- ۴ پورت آپلینک SFP گیگابیت
- مدیریتی لایه ۲ (LAN Base)
- بدون PoE

## کاربرد
مناسب طبقات اداری و سالن‌های پرکاربر که نیازی به PoE ندارند.

## قیمت تقریبی
**حدود ۳۰۰ تا ۷۰۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '1 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ سیسکو Catalyst 3750-X 24P-S$t$, 'cisco-catalyst-3750x-24p-s', $e$سوییچ مدیریتی نسل قبل سیسکو با پشتیبانی از PoE+ و قابلیت‌های لایه ۳ پایه (IP Base). تولید آن متوقف شده و معمولاً به‌صورت استوک عرضه می‌شود.$e$, $c$## معرفی
سوییچ مدیریتی نسل قبل سیسکو با پشتیبانی از PoE+ و قابلیت‌های لایه ۳ پایه (IP Base). تولید آن متوقف شده و معمولاً به‌صورت استوک عرضه می‌شود.

## مشخصات کلیدی
- ۲۴ پورت گیگابیت با PoE+
- اسلات ماژول آپلینک
- قابلیت استک (StackWise Plus)
- نرم‌افزار IP Base

## کاربرد
مناسب اتصال IP Phone و اکسس‌پوینت در شبکه‌های سازمانی.

## قیمت تقریبی
**حدود ۱۵۰ تا ۴۰۰ دلار (استوک)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '2 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ سیسکو Catalyst 3850-48P-S$t$, 'cisco-catalyst-3850-48p-s', $e$سوییچ ۴۸ پورت PoE+ با کارایی بالا و استک پرسرعت، برای هستهٔ کوچک و لایه دسترسی شبکه‌های بزرگ‌تر.$e$, $c$## معرفی
سوییچ ۴۸ پورت PoE+ با کارایی بالا و استک پرسرعت، برای هستهٔ کوچک و لایه دسترسی شبکه‌های بزرگ‌تر.

## مشخصات کلیدی
- ۴۸ پورت گیگابیت با PoE+
- ماژول آپلینک قابل تعویض
- استک StackWise-480
- نرم‌افزار IP Base (لایه ۳)

## کاربرد
مناسب شبکه‌های سازمانی با تعداد زیاد دستگاه PoE.

## قیمت تقریبی
**حدود ۴۰۰ تا ۹۰۰ دلار (استوک)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '3 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ سیسکو Catalyst 9200L-24T-4G-E$t$, 'cisco-catalyst-9200l-24t-4g-e', $e$سوییچ نسل جدید سری Catalyst 9000 با نرم‌افزار Network Essentials و پشتیبانی از Cisco DNA؛ انتخابی مدرن برای شبکه‌های سازمانی.$e$, $c$## معرفی
سوییچ نسل جدید سری Catalyst 9000 با نرم‌افزار Network Essentials و پشتیبانی از Cisco DNA؛ انتخابی مدرن برای شبکه‌های سازمانی.

## مشخصات کلیدی
- ۲۴ پورت گیگابیت مسی
- ۴ پورت آپلینک گیگابیت
- نرم‌افزار Network Essentials
- بدون PoE

## کاربرد
مناسب جایگزینی سوییچ‌های قدیمی در شبکه‌های سازمانی کوچک و متوسط.

## قیمت تقریبی
**حدود ۸۰۰ تا ۱۵۰۰ دلار (نو)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '4 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ سیسکو Catalyst 9300-48P-E$t$, 'cisco-catalyst-9300-48p-e', $e$سوییچ رده‌بالای لایهٔ دسترسی و هستهٔ کوچک سیسکو با استک سریع، امنیت پیشرفته و ماژول آپلینک قابل تعویض.$e$, $c$## معرفی
سوییچ رده‌بالای لایهٔ دسترسی و هستهٔ کوچک سیسکو با استک سریع، امنیت پیشرفته و ماژول آپلینک قابل تعویض.

## مشخصات کلیدی
- ۴۸ پورت گیگابیت با PoE+
- ماژول آپلینک قابل تعویض
- استک StackWise-480
- نرم‌افزار Network Essentials

## کاربرد
مناسب سازمان‌های بزرگ، بیمارستان‌ها و دانشگاه‌ها.

## قیمت تقریبی
**حدود ۳۰۰۰ تا ۵۵۰۰ دلار (نو)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '5 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ میکروتیک CRS326-24G-2S+RM$t$, 'mikrotik-crs326-24g-2s-rm', $e$سوییچ مدیریتی رکمونت میکروتیک با قیمت مناسب. دو سیستم‌عامل RouterOS و SwOS دارد و برای کاربران حرفه‌ای انعطاف زیادی دارد.$e$, $c$## معرفی
سوییچ مدیریتی رکمونت میکروتیک با قیمت مناسب. دو سیستم‌عامل RouterOS و SwOS دارد و برای کاربران حرفه‌ای انعطاف زیادی دارد.

## مشخصات کلیدی
- ۲۴ پورت گیگابیت
- ۲ پورت SFP+ با سرعت ۱۰ گیگابیت
- سیستم‌عامل RouterOS / SwOS
- رک ۱U

## کاربرد
مناسب شبکه‌های ISP کوچک، شرکت‌ها و دیتاسنترهای کوچک.

## قیمت تقریبی
**حدود ۱۵۰ تا ۲۰۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '6 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ تی‌پی‌لینک TL-SG1016D$t$, 'tplink-tl-sg1016d', $e$سوییچ ۱۶ پورت گیگابیت غیرمدیریتی با بدنهٔ فلزی. بدون نیاز به تنظیمات، فقط وصل کنید و استفاده کنید.$e$, $c$## معرفی
سوییچ ۱۶ پورت گیگابیت غیرمدیریتی با بدنهٔ فلزی. بدون نیاز به تنظیمات، فقط وصل کنید و استفاده کنید.

## مشخصات کلیدی
- ۱۶ پورت گیگابیت
- غیرمدیریتی (Plug and Play)
- بدنهٔ فلزی
- رومیزی یا رک

## کاربرد
مناسب دفاتر کوچک، فروشگاه‌ها و شبکه‌های خانگی بزرگ.

## قیمت تقریبی
**حدود ۳۰ تا ۵۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '7 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ تی‌پی‌لینک TL-SG108$t$, 'tplink-tl-sg108', $e$سوییچ ۸ پورت گیگابیت کوچک و کم‌مصرف با بدنهٔ فلزی، یکی از پرفروش‌ترین سوییچ‌های خانگی.$e$, $c$## معرفی
سوییچ ۸ پورت گیگابیت کوچک و کم‌مصرف با بدنهٔ فلزی، یکی از پرفروش‌ترین سوییچ‌های خانگی.

## مشخصات کلیدی
- ۸ پورت گیگابیت
- غیرمدیریتی
- کم‌مصرف و بی‌صدا
- رومیزی

## کاربرد
مناسب خانه، اتاق سرور کوچک و گسترش پورت‌های روتر.

## قیمت تقریبی
**حدود ۱۵ تا ۲۵ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '8 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ دی‌لینک DGS-1024C$t$, 'dlink-dgs-1024c', $e$سوییچ ۲۴ پورت گیگابیت غیرمدیریتی دی‌لینک، فشرده و مناسب نصب در رک یا روی میز.$e$, $c$## معرفی
سوییچ ۲۴ پورت گیگابیت غیرمدیریتی دی‌لینک، فشرده و مناسب نصب در رک یا روی میز.

## مشخصات کلیدی
- ۲۴ پورت گیگابیت
- غیرمدیریتی
- رومیزی / رکمونت
- بدون PoE

## کاربرد
مناسب دفاتر و شبکه‌های کوچکی که پورت زیاد ولی مدیریت ساده می‌خواهند.

## قیمت تقریبی
**حدود ۷۰ تا ۱۲۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '9 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر میکروتیک hEX RB750Gr3$t$, 'mikrotik-hex-rb750gr3', $e$روتر ۵ پورت گیگابیت کوچک و اقتصادی با RouterOS کامل؛ از محبوب‌ترین روترهای میکروتیک در ایران.$e$, $c$## معرفی
روتر ۵ پورت گیگابیت کوچک و اقتصادی با RouterOS کامل؛ از محبوب‌ترین روترهای میکروتیک در ایران.

## مشخصات کلیدی
- ۵ پورت گیگابیت
- پردازندهٔ دوهسته‌ای ۸۸۰ مگاهرتز
- ۲۵۶ مگابایت رم
- پورت USB و اسلات microSD

## کاربرد
مناسب دفاتر کوچک، فایروال، VPN و مدیریت پهنای باند.

## قیمت تقریبی
**حدود ۵۵ تا ۷۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '10 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر میکروتیک hEX S RB760iGS$t$, 'mikrotik-hex-s-rb760igs', $e$نسخهٔ ارتقایافتهٔ hEX با پورت SFP و PoE خروجی روی پورت ۵؛ برای اتصال فیبر نوری یا تغذیهٔ یک دستگاه PoE.$e$, $c$## معرفی
نسخهٔ ارتقایافتهٔ hEX با پورت SFP و PoE خروجی روی پورت ۵؛ برای اتصال فیبر نوری یا تغذیهٔ یک دستگاه PoE.

## مشخصات کلیدی
- ۵ پورت گیگابیت + ۱ پورت SFP
- PoE خروجی روی پورت ۵
- پردازندهٔ دوهسته‌ای ۸۸۰ مگاهرتز
- ۲۵۶ مگابایت رم

## کاربرد
مناسب دفاتر، اینترنت فیبر نوری و استفاده در شبکه‌های کوچک.

## قیمت تقریبی
**حدود ۷۰ تا ۱۰۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '11 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر میکروتیک RB5009UG+S+IN$t$, 'mikrotik-rb5009ug-s-in', $e$روتر قدرتمند با پردازندهٔ چهارهسته‌ای، یک پورت ۲.۵ گیگابیت و یک پورت SFP+ ده‌گیگابیتی، با قیمتی مناسب برای ظرفیت بالا.$e$, $c$## معرفی
روتر قدرتمند با پردازندهٔ چهارهسته‌ای، یک پورت ۲.۵ گیگابیت و یک پورت SFP+ ده‌گیگابیتی، با قیمتی مناسب برای ظرفیت بالا.

## مشخصات کلیدی
- ۱ پورت ۲.۵ گیگابیت + ۷ پورت گیگابیت
- ۱ پورت SFP+ (۱۰ گیگابیت)
- پردازندهٔ چهارهسته‌ای ۱.۴ گیگاهرتز
- ۱ گیگابایت رم

## کاربرد
مناسب شرکت‌ها و ISPهای کوچک با ترافیک بالا.

## قیمت تقریبی
**حدود ۲۰۰ تا ۲۶۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '12 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر میکروتیک RB4011iGS+RM$t$, 'mikrotik-rb4011igs-rm', $e$روتر رکمونت ۱۰ پورت گیگابیت با یک پورت SFP+ و کارایی بالا برای شبکه‌های متوسط.$e$, $c$## معرفی
روتر رکمونت ۱۰ پورت گیگابیت با یک پورت SFP+ و کارایی بالا برای شبکه‌های متوسط.

## مشخصات کلیدی
- ۱۰ پورت گیگابیت
- ۱ پورت SFP+ (۱۰ گیگابیت)
- پردازندهٔ چهارهسته‌ای ۱.۴ گیگاهرتز
- ۱ گیگابایت رم
- رک ۱U

## کاربرد
مناسب شرکت‌ها، ISPهای کوچک و شبکه‌های چندخطه.

## قیمت تقریبی
**حدود ۱۹۰ تا ۲۶۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '13 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر میکروتیک CCR2004-16G-2S+$t$, 'mikrotik-ccr2004-16g-2s', $e$روتر سری Cloud Core با ۱۶ پورت گیگابیت و دو پورت SFP+؛ برای مسیریابی و پردازش ترافیک بالا.$e$, $c$## معرفی
روتر سری Cloud Core با ۱۶ پورت گیگابیت و دو پورت SFP+؛ برای مسیریابی و پردازش ترافیک بالا.

## مشخصات کلیدی
- ۱۶ پورت گیگابیت
- ۲ پورت SFP+ (۱۰ گیگابیت)
- پردازندهٔ چهارهسته‌ای
- ۴ گیگابایت رم

## کاربرد
مناسب ISPها، سازمان‌ها و شبکه‌هایی با BGP و ترافیک زیاد.

## قیمت تقریبی
**حدود ۳۰۰ تا ۴۵۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '14 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر میکروتیک CCR2116-12G-4S+$t$, 'mikrotik-ccr2116-12g-4s', $e$روتر رده‌بالای میکروتیک با پردازندهٔ ۱۶ هسته‌ای برای ترافیک سنگین و جدول‌های مسیریابی بزرگ.$e$, $c$## معرفی
روتر رده‌بالای میکروتیک با پردازندهٔ ۱۶ هسته‌ای برای ترافیک سنگین و جدول‌های مسیریابی بزرگ.

## مشخصات کلیدی
- ۱۲ پورت گیگابیت
- ۴ پورت SFP+ (۱۰ گیگابیت)
- پردازندهٔ ۱۶ هسته‌ای
- ۱۶ گیگابایت رم

## کاربرد
مناسب ISPها و دیتاسنترها.

## قیمت تقریبی
**حدود ۱۰۰۰ تا ۱۵۰۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '15 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر سیسکو ISR 4331/K9$t$, 'cisco-isr4331-k9', $e$روتر شاخهٔ سازمانی سیسکو از سری ISR 4000 با ماژول‌های قابل توسعه و IOS XE.$e$, $c$## معرفی
روتر شاخهٔ سازمانی سیسکو از سری ISR 4000 با ماژول‌های قابل توسعه و IOS XE.

## مشخصات کلیدی
- ۳ پورت گیگابیت داخلی
- ۲ اسلات NIM و ۱ اسلات SM-X
- کارایی پایه ۱۰۰ مگابیت، قابل ارتقا تا ۳۰۰ مگابیت با لایسنس
- سیستم‌عامل IOS XE

## کاربرد
مناسب اتصال شعب سازمانی، VPN و WAN.

## قیمت تقریبی
**حدود ۶۰۰ تا ۱۵۰۰ دلار (استوک تا نو)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '16 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر سیسکو 2811$t$, 'cisco-2811', $e$روتر کلاسیک نسل اول ISR سیسکو. تولید آن متوقف شده ولی هنوز در آزمایشگاه‌ها و آموزش CCNA/CCNP کاربرد دارد.$e$, $c$## معرفی
روتر کلاسیک نسل اول ISR سیسکو. تولید آن متوقف شده ولی هنوز در آزمایشگاه‌ها و آموزش CCNA/CCNP کاربرد دارد.

## مشخصات کلیدی
- ۲ پورت فست اترنت
- ۴ اسلات HWIC
- پشتیبانی از ماژول‌های صوتی و WAN قدیمی
- نسل قدیمی (EoL)

## کاربرد
مناسب یادگیری، آزمایشگاه و شبکه‌های کوچک قدیمی.

## قیمت تقریبی
**حدود ۴۰ تا ۱۲۰ دلار (استوک)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '17 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر سیسکو Catalyst C8200L-1N-4T$t$, 'cisco-c8200l-1n-4t', $e$روتر لبهٔ (Edge) نسل جدید سیسکو با پشتیبانی از SD-WAN و معماری Catalyst 8000.$e$, $c$## معرفی
روتر لبهٔ (Edge) نسل جدید سیسکو با پشتیبانی از SD-WAN و معماری Catalyst 8000.

## مشخصات کلیدی
- ۴ پورت گیگابیت
- ۱ اسلات NIM
- پشتیبانی از SD-WAN
- سیستم‌عامل IOS XE

## کاربرد
مناسب شعب سازمانی که SD-WAN و مدیریت متمرکز می‌خواهند.

## قیمت تقریبی
**حدود ۲۰۰۰ تا ۴۰۰۰ دلار (تخمین کم‌دقت)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '18 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر وایرلس تی‌پی‌لینک Archer AX10$t$, 'tplink-archer-ax10', $e$روتر بی‌سیم Wi-Fi 6 دو باند با قیمت مناسب برای منزل و دفتر کوچک.$e$, $c$## معرفی
روتر بی‌سیم Wi-Fi 6 دو باند با قیمت مناسب برای منزل و دفتر کوچک.

## مشخصات کلیدی
- Wi-Fi 6 با استاندارد AX1500
- باند ۲.۴ گیگاهرتز: ۳۰۰ مگابیت، باند ۵ گیگاهرتز: ۱۲۰۱ مگابیت
- ۴ پورت LAN گیگابیت + ۱ پورت WAN
- آنتن‌های چندگانه

## کاربرد
مناسب منزل و دفاتر کوچک با چندین دستگاه متصل.

## قیمت تقریبی
**حدود ۵۰ تا ۸۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '19 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ سیسکو Catalyst 2960-24TC-L$t$, 'cisco-catalyst-2960-24tc-l', $e$سوییچ مدیریتی کلاسیک سری 2960 سیسکو و یکی از رایج‌ترین مدل‌های استوک در بازار ایران.$e$, $c$## معرفی
سوییچ مدیریتی کلاسیک سری 2960 سیسکو و یکی از رایج‌ترین مدل‌های استوک در بازار ایران.

## مشخصات کلیدی
- ۲۴ پورت فست اترنت (۱۰/۱۰۰)
- ۲ پورت آپلینک دوکاره گیگابیت (مس یا SFP)
- مدیریتی لایه ۲ (LAN Base)
- قابل نصب در رک

## کاربرد
مناسب شبکه‌های کوچک و آزمایشگاه‌های آموزشی.

## قیمت تقریبی
**حدود ۶۰ تا ۱۵۰ دلار (استوک)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '20 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ سیسکو Catalyst 2960-48TC-L$t$, 'cisco-catalyst-2960-48tc-l', $e$نسخهٔ ۴۸ پورت سوییچ 2960 برای شبکه‌هایی که پورت زیاد با هزینهٔ کم می‌خواهند.$e$, $c$## معرفی
نسخهٔ ۴۸ پورت سوییچ 2960 برای شبکه‌هایی که پورت زیاد با هزینهٔ کم می‌خواهند.

## مشخصات کلیدی
- ۴۸ پورت فست اترنت (۱۰/۱۰۰)
- ۲ پورت آپلینک دوکاره گیگابیت
- مدیریتی لایه ۲
- قابل نصب در رک

## کاربرد
مناسب لایهٔ دسترسی در ادارات.

## قیمت تقریبی
**حدود ۱۰۰ تا ۲۵۰ دلار (استوک)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '21 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ سیسکو Catalyst 2960-X 48FPD-L$t$, 'cisco-catalyst-2960x-48fpd-l', $e$سوییچ ۴۸ پورت PoE+ با دو پورت آپلینک ۱۰ گیگابیتی؛ مناسب تغذیهٔ تعداد زیادی تلفن IP و اکسس‌پوینت.$e$, $c$## معرفی
سوییچ ۴۸ پورت PoE+ با دو پورت آپلینک ۱۰ گیگابیتی؛ مناسب تغذیهٔ تعداد زیادی تلفن IP و اکسس‌پوینت.

## مشخصات کلیدی
- ۴۸ پورت گیگابیت با PoE+
- ۲ پورت SFP+ (۱۰ گیگابیت)
- بودجهٔ PoE بالا (حدود ۷۴۰ وات)
- مدیریتی لایه ۲ (LAN Base)

## کاربرد
مناسب ساختمان‌های اداری و دانشگاهی با دستگاه‌های PoE زیاد.

## قیمت تقریبی
**حدود ۵۰۰ تا ۱۱۰۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '22 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ سیسکو Catalyst 3560-V2 48PS-S$t$, 'cisco-catalyst-3560v2-48ps-s', $e$سوییچ قدیمی ولی ارزان با PoE و قابلیت‌های لایه ۳ پایه؛ مناسب پروژه‌های کم‌هزینه و آموزشی.$e$, $c$## معرفی
سوییچ قدیمی ولی ارزان با PoE و قابلیت‌های لایه ۳ پایه؛ مناسب پروژه‌های کم‌هزینه و آموزشی.

## مشخصات کلیدی
- ۴۸ پورت فست اترنت با PoE
- ۴ پورت SFP گیگابیت
- قابلیت‌های لایه ۳ پایه
- نسل قدیمی (EoL)

## کاربرد
مناسب شبکه‌های کوچک و آزمایشگاه.

## قیمت تقریبی
**حدود ۴۰ تا ۱۰۰ دلار (استوک)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '23 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ سیسکو Catalyst 3750G-48PS-S$t$, 'cisco-catalyst-3750g-48ps-s', $e$سوییچ گیگابیتی استک‌پذیر با PoE از نسل 3750؛ هنوز در شبکه‌های سازمانی قدیمی استفاده می‌شود.$e$, $c$## معرفی
سوییچ گیگابیتی استک‌پذیر با PoE از نسل 3750؛ هنوز در شبکه‌های سازمانی قدیمی استفاده می‌شود.

## مشخصات کلیدی
- ۴۸ پورت گیگابیت با PoE
- ۴ پورت SFP گیگابیت
- استک StackWise (۳۲ گیگابیت)
- لایه ۳ پایه

## کاربرد
مناسب جایگزینی یا توسعهٔ شبکه‌های قدیمی سیسکو.

## قیمت تقریبی
**حدود ۸۰ تا ۲۰۰ دلار (استوک)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '24 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ سیسکو Business CBS350-8P-E-2G$t$, 'cisco-cbs350-8p-e-2g', $e$سوییچ مدیریتی کوچک سری Business 350 با PoE+، رابط وب ساده و مناسب شبکه‌های کوچک.$e$, $c$## معرفی
سوییچ مدیریتی کوچک سری Business 350 با PoE+، رابط وب ساده و مناسب شبکه‌های کوچک.

## مشخصات کلیدی
- ۸ پورت گیگابیت با PoE+
- ۲ پورت آپلینک گیگابیت
- مدیریت از طریق وب
- بودجهٔ PoE حدود ۶۷ وات

## کاربرد
مناسب دفاتر کوچک و فروشگاه‌ها که دوربین یا اکسس‌پوینت PoE دارند.

## قیمت تقریبی
**حدود ۱۵۰ تا ۲۵۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '25 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ میکروتیک CRS112-8P-4S-IN$t$, 'mikrotik-crs112-8p-4s-in', $e$سوییچ ۸ پورت با تغذیهٔ PoE خروجی و ۴ پورت SFP، برای پروژه‌های وایرلس و دوربین.$e$, $c$## معرفی
سوییچ ۸ پورت با تغذیهٔ PoE خروجی و ۴ پورت SFP، برای پروژه‌های وایرلس و دوربین.

## مشخصات کلیدی
- ۸ پورت گیگابیت (PoE خروجی)
- ۴ پورت SFP
- RouterOS / SwOS
- قابل نصب روی دیوار یا رک

## کاربرد
مناسب ISPهای وایرلس و شبکه‌های دوربین مداربسته.

## قیمت تقریبی
**حدود ۱۰۰ تا ۱۴۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '26 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ میکروتیک CRS317-1G-16S+RM$t$, 'mikrotik-crs317-1g-16s-rm', $e$سوییچ ۱۰ گیگابیتی ارزان با ۱۶ پورت SFP+؛ انتخاب محبوب برای شبکه‌های فیبر نوری.$e$, $c$## معرفی
سوییچ ۱۰ گیگابیتی ارزان با ۱۶ پورت SFP+؛ انتخاب محبوب برای شبکه‌های فیبر نوری.

## مشخصات کلیدی
- ۱۶ پورت SFP+ (۱۰ گیگابیت)
- ۱ پورت گیگابیت مدیریتی
- RouterOS / SwOS
- رک ۱U

## کاربرد
مناسب دیتاسنتر کوچک و شبکه‌های ذخیره‌سازی.

## قیمت تقریبی
**حدود ۲۷۰ تا ۳۸۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '27 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ میکروتیک CSS610-8G-2S+IN$t$, 'mikrotik-css610-8g-2s-in', $e$سوییچ مدیریتی کوچک و اقتصادی با دو پورت ۱۰ گیگابیتی SFP+ برای استفادهٔ رومیزی.$e$, $c$## معرفی
سوییچ مدیریتی کوچک و اقتصادی با دو پورت ۱۰ گیگابیتی SFP+ برای استفادهٔ رومیزی.

## مشخصات کلیدی
- ۸ پورت گیگابیت
- ۲ پورت SFP+ (۱۰ گیگابیت)
- سیستم‌عامل SwOS
- رومیزی

## کاربرد
مناسب دفاتر کوچک که آپلینک سریع می‌خواهند.

## قیمت تقریبی
**حدود ۵۵ تا ۸۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '28 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ میکروتیک RB260GSP$t$, 'mikrotik-rb260gsp', $e$سوییچ ۵ پورت کوچک با PoE خروجی روی چند پورت و یک پورت SFP.$e$, $c$## معرفی
سوییچ ۵ پورت کوچک با PoE خروجی روی چند پورت و یک پورت SFP.

## مشخصات کلیدی
- ۵ پورت گیگابیت
- ۱ پورت SFP
- PoE خروجی روی چهار پورت
- سیستم‌عامل SwOS

## کاربرد
مناسب تغذیهٔ اکسس‌پوینت یا دوربین در فضاهای کوچک.

## قیمت تقریبی
**حدود ۵۰ تا ۷۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '29 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ تی‌پی‌لینک LS1008G$t$, 'tplink-ls1008g', $e$سوییچ ۸ پورت گیگابیت غیرمدیریتی، ساده و ارزان از سری LiteWave.$e$, $c$## معرفی
سوییچ ۸ پورت گیگابیت غیرمدیریتی، ساده و ارزان از سری LiteWave.

## مشخصات کلیدی
- ۸ پورت گیگابیت
- غیرمدیریتی
- کم‌مصرف
- رومیزی

## کاربرد
مناسب خانه و دفتر کوچک.

## قیمت تقریبی
**حدود ۱۲ تا ۲۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '30 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$سوییچ دی‌لینک DGS-F1006P-E$t$, 'dlink-dgs-f1006p-e', $e$سوییچ ۶ پورت گیگابیت با PoE برای اتصال دوربین و اکسس‌پوینت بدون نیاز به آداپتور جداگانه.$e$, $c$## معرفی
سوییچ ۶ پورت گیگابیت با PoE برای اتصال دوربین و اکسس‌پوینت بدون نیاز به آداپتور جداگانه.

## مشخصات کلیدی
- ۶ پورت گیگابیت
- ۴ پورت با PoE
- غیرمدیریتی
- رومیزی

## کاربرد
مناسب دوربین‌های مداربسته و شبکه‌های کوچک.

## قیمت تقریبی
**حدود ۴۰ تا ۷۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='switch'), 'published', now() - interval '31 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر میکروتیک hAP ac3$t$, 'mikrotik-hap-ac3', $e$روتر وایرلس دوباند با پنج پورت گیگابیت و RouterOS کامل، مناسب منزل و دفتر.$e$, $c$## معرفی
روتر وایرلس دوباند با پنج پورت گیگابیت و RouterOS کامل، مناسب منزل و دفتر.

## مشخصات کلیدی
- ۵ پورت گیگابیت
- وای‌فای دوباند (۲.۴ و ۵ گیگاهرتز) استاندارد AC
- پردازندهٔ چهارهسته‌ای
- پورت USB

## کاربرد
مناسب دفاتر کوچک و منازل که کنترل پیشرفته شبکه می‌خواهند.

## قیمت تقریبی
**حدود ۷۰ تا ۱۰۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '32 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر میکروتیک hAP lite RB941-2nD$t$, 'mikrotik-hap-lite-rb941', $e$کوچک‌ترین و ارزان‌ترین روتر وایرلس میکروتیک با RouterOS کامل.$e$, $c$## معرفی
کوچک‌ترین و ارزان‌ترین روتر وایرلس میکروتیک با RouterOS کامل.

## مشخصات کلیدی
- ۴ پورت فست اترنت
- وای‌فای ۲.۴ گیگاهرتز (۳۰۰ مگابیت)
- RouterOS
- مصرف بسیار کم

## کاربرد
مناسب منزل، تست و آموزش RouterOS.

## قیمت تقریبی
**حدود ۲۰ تا ۳۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '33 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر میکروتیک hEX lite RB750r2$t$, 'mikrotik-hex-lite-rb750r2', $e$روتر ۵ پورت فست اترنت میکروتیک برای شبکه‌های کوچک و آموزشی.$e$, $c$## معرفی
روتر ۵ پورت فست اترنت میکروتیک برای شبکه‌های کوچک و آموزشی.

## مشخصات کلیدی
- ۵ پورت فست اترنت
- پردازندهٔ ۸۵۰ مگاهرتز
- ۶۴ مگابایت رم
- RouterOS

## کاربرد
مناسب اینترنت‌های کم‌سرعت و آموزش.

## قیمت تقریبی
**حدود ۳۰ تا ۴۵ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '34 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر میکروتیک RB1100AHx4$t$, 'mikrotik-rb1100ahx4', $e$روتر رکمونت با ۱۳ پورت گیگابیت و پردازندهٔ چهارهسته‌ای؛ نسخهٔ Dude دارای حافظهٔ ذخیره‌سازی داخلی است.$e$, $c$## معرفی
روتر رکمونت با ۱۳ پورت گیگابیت و پردازندهٔ چهارهسته‌ای؛ نسخهٔ Dude دارای حافظهٔ ذخیره‌سازی داخلی است.

## مشخصات کلیدی
- ۱۳ پورت گیگابیت
- پردازندهٔ چهارهسته‌ای
- ۱ گیگابایت رم
- رک ۱U

## کاربرد
مناسب شرکت‌ها و ISPهای کوچک.

## قیمت تقریبی
**حدود ۲۵۰ تا ۴۰۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '35 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر میکروتیک CCR2004-1G-2XS-PCIe$t$, 'mikrotik-ccr2004-1g-2xs-pcie', $e$روتر در قالب کارت PCIe با دو پورت ۲۵ گیگابیتی SFP28 برای نصب داخل سرور.$e$, $c$## معرفی
روتر در قالب کارت PCIe با دو پورت ۲۵ گیگابیتی SFP28 برای نصب داخل سرور.

## مشخصات کلیدی
- ۲ پورت SFP28 (۲۵ گیگابیت)
- ۱ پورت گیگابیت مدیریتی
- فرم PCIe
- پردازندهٔ چهارهسته‌ای

## کاربرد
مناسب سرورها و دیتاسنترهایی با ترافیک بالا.

## قیمت تقریبی
**حدود ۲۵۰ تا ۴۰۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '36 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر سیسکو 3845$t$, 'cisco-3845', $e$روتر رده‌بالای نسل اول ISR سیسکو (سری 3800) با اسلات‌های ماژولار متعدد؛ تولید آن متوقف شده است.$e$, $c$## معرفی
روتر رده‌بالای نسل اول ISR سیسکو (سری 3800) با اسلات‌های ماژولار متعدد؛ تولید آن متوقف شده است.

## مشخصات کلیدی
- ۲ پورت گیگابیت داخلی
- اسلات‌های ماژولار برای کارت WAN و صوتی
- نسل قدیمی (EoL)
- رک

## کاربرد
مناسب آزمایشگاه و شبکه‌های سازمانی قدیمی.

## قیمت تقریبی
**حدود ۶۰ تا ۲۰۰ دلار (استوک)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '37 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر سیسکو ASR 1002-X$t$, 'cisco-asr1002-x', $e$روتر کلاس اپراتوری سیسکو برای تجمیع ترافیک و WAN با کارایی بالا.$e$, $c$## معرفی
روتر کلاس اپراتوری سیسکو برای تجمیع ترافیک و WAN با کارایی بالا.

## مشخصات کلیدی
- ۶ پورت SFP گیگابیت داخلی
- کارایی تا ۳۶ گیگابیت با لایسنس
- سیستم‌عامل IOS XE
- رک ۲U

## کاربرد
مناسب اپراتورها و شبکه‌های بزرگ.

## قیمت تقریبی
**حدود ۱۵۰۰ تا ۶۰۰۰ دلار (استوک، تخمین کم‌دقت)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '38 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر وایرلس تی‌پی‌لینک Archer AX12$t$, 'tplink-archer-ax12', $e$روتر Wi-Fi 6 دوباند با کارایی AX1500 برای منازل و دفاتر کوچک.$e$, $c$## معرفی
روتر Wi-Fi 6 دوباند با کارایی AX1500 برای منازل و دفاتر کوچک.

## مشخصات کلیدی
- Wi-Fi 6 با استاندارد AX1500
- دو باند ۲.۴ و ۵ گیگاهرتز
- پورت‌های گیگابیت
- آنتن‌های چندگانه

## کاربرد
مناسب منزل با چند دستگاه همزمان.

## قیمت تقریبی
**حدود ۵۰ تا ۸۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '39 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر وایرلس تی‌پی‌لینک Archer BE550$t$, 'tplink-archer-be550', $e$روتر نسل جدید Wi-Fi 7 تی‌پی‌لینک. مشخصات دقیق پورت‌ها را از سایت سازنده بررسی کنید.$e$, $c$## معرفی
روتر نسل جدید Wi-Fi 7 تی‌پی‌لینک. مشخصات دقیق پورت‌ها را از سایت سازنده بررسی کنید.

## مشخصات کلیدی
- Wi-Fi 7
- چندباندی (مشخصات دقیق از سایت سازنده)
- پورت‌های سرعت بالا
- مناسب شبکه‌های جدید

## کاربرد
مناسب منزل و دفاتر که پهنای باند و تأخیر کم می‌خواهند.

## قیمت تقریبی
**حدود ۱۵۰ تا ۲۵۰ دلار (تخمین کم‌دقت)**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '40 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$روتر وایرلس ایسوس RT-AX52$t$, 'asus-rt-ax52', $e$روتر Wi-Fi 6 دوباند ایسوس با کارایی AX1800 و ابزارهای امنیتی و کنترل والدین.$e$, $c$## معرفی
روتر Wi-Fi 6 دوباند ایسوس با کارایی AX1800 و ابزارهای امنیتی و کنترل والدین.

## مشخصات کلیدی
- Wi-Fi 6 با استاندارد AX1800
- دو باند
- ۴ پورت LAN گیگابیت + ۱ پورت WAN
- آنتن‌های خارجی

## کاربرد
مناسب منزل و دفاتر کوچک.

## قیمت تقریبی
**حدود ۶۰ تا ۹۰ دلار**

> قیمت‌ها تخمینی و بر پایهٔ قیمت‌های بین‌المللی‌اند، نه قیمت قطعی بازار ایران. پیش از خرید از فروشندگان استعلام بگیرید.$c$, (select id from categories where slug='router'), 'published', now() - interval '41 minutes' on conflict (slug) do nothing;

update articles set featured_image = '/products/cisco-catalyst-2960x-24ts-l.svg' where slug = 'cisco-catalyst-2960x-24ts-l';
update articles set featured_image = '/products/cisco-catalyst-2960x-48ts-l.svg' where slug = 'cisco-catalyst-2960x-48ts-l';
update articles set featured_image = '/products/cisco-catalyst-3750x-24p-s.svg' where slug = 'cisco-catalyst-3750x-24p-s';
update articles set featured_image = '/products/cisco-catalyst-3850-48p-s.svg' where slug = 'cisco-catalyst-3850-48p-s';
update articles set featured_image = '/products/cisco-catalyst-9200l-24t-4g-e.svg' where slug = 'cisco-catalyst-9200l-24t-4g-e';
update articles set featured_image = '/products/cisco-catalyst-9300-48p-e.svg' where slug = 'cisco-catalyst-9300-48p-e';
update articles set featured_image = '/products/mikrotik-crs326-24g-2s-rm.svg' where slug = 'mikrotik-crs326-24g-2s-rm';
update articles set featured_image = '/products/tplink-tl-sg1016d.svg' where slug = 'tplink-tl-sg1016d';
update articles set featured_image = '/products/tplink-tl-sg108.svg' where slug = 'tplink-tl-sg108';
update articles set featured_image = '/products/dlink-dgs-1024c.svg' where slug = 'dlink-dgs-1024c';
update articles set featured_image = '/products/mikrotik-hex-rb750gr3.svg' where slug = 'mikrotik-hex-rb750gr3';
update articles set featured_image = '/products/mikrotik-hex-s-rb760igs.svg' where slug = 'mikrotik-hex-s-rb760igs';
update articles set featured_image = '/products/mikrotik-rb5009ug-s-in.svg' where slug = 'mikrotik-rb5009ug-s-in';
update articles set featured_image = '/products/mikrotik-rb4011igs-rm.svg' where slug = 'mikrotik-rb4011igs-rm';
update articles set featured_image = '/products/mikrotik-ccr2004-16g-2s.svg' where slug = 'mikrotik-ccr2004-16g-2s';
update articles set featured_image = '/products/mikrotik-ccr2116-12g-4s.svg' where slug = 'mikrotik-ccr2116-12g-4s';
update articles set featured_image = '/products/cisco-isr4331-k9.svg' where slug = 'cisco-isr4331-k9';
update articles set featured_image = '/products/cisco-2811.svg' where slug = 'cisco-2811';
update articles set featured_image = '/products/cisco-c8200l-1n-4t.svg' where slug = 'cisco-c8200l-1n-4t';
update articles set featured_image = '/products/tplink-archer-ax10.svg' where slug = 'tplink-archer-ax10';
update articles set featured_image = '/products/cisco-catalyst-2960-24tc-l.svg' where slug = 'cisco-catalyst-2960-24tc-l';
update articles set featured_image = '/products/cisco-catalyst-2960-48tc-l.svg' where slug = 'cisco-catalyst-2960-48tc-l';
update articles set featured_image = '/products/cisco-catalyst-2960x-48fpd-l.svg' where slug = 'cisco-catalyst-2960x-48fpd-l';
update articles set featured_image = '/products/cisco-catalyst-3560v2-48ps-s.svg' where slug = 'cisco-catalyst-3560v2-48ps-s';
update articles set featured_image = '/products/cisco-catalyst-3750g-48ps-s.svg' where slug = 'cisco-catalyst-3750g-48ps-s';
update articles set featured_image = '/products/cisco-cbs350-8p-e-2g.svg' where slug = 'cisco-cbs350-8p-e-2g';
update articles set featured_image = '/products/mikrotik-crs112-8p-4s-in.svg' where slug = 'mikrotik-crs112-8p-4s-in';
update articles set featured_image = '/products/mikrotik-crs317-1g-16s-rm.svg' where slug = 'mikrotik-crs317-1g-16s-rm';
update articles set featured_image = '/products/mikrotik-css610-8g-2s-in.svg' where slug = 'mikrotik-css610-8g-2s-in';
update articles set featured_image = '/products/mikrotik-rb260gsp.svg' where slug = 'mikrotik-rb260gsp';
update articles set featured_image = '/products/tplink-ls1008g.svg' where slug = 'tplink-ls1008g';
update articles set featured_image = '/products/dlink-dgs-f1006p-e.svg' where slug = 'dlink-dgs-f1006p-e';
update articles set featured_image = '/products/mikrotik-hap-ac3.svg' where slug = 'mikrotik-hap-ac3';
update articles set featured_image = '/products/mikrotik-hap-lite-rb941.svg' where slug = 'mikrotik-hap-lite-rb941';
update articles set featured_image = '/products/mikrotik-hex-lite-rb750r2.svg' where slug = 'mikrotik-hex-lite-rb750r2';
update articles set featured_image = '/products/mikrotik-rb1100ahx4.svg' where slug = 'mikrotik-rb1100ahx4';
update articles set featured_image = '/products/mikrotik-ccr2004-1g-2xs-pcie.svg' where slug = 'mikrotik-ccr2004-1g-2xs-pcie';
update articles set featured_image = '/products/cisco-3845.svg' where slug = 'cisco-3845';
update articles set featured_image = '/products/cisco-asr1002-x.svg' where slug = 'cisco-asr1002-x';
update articles set featured_image = '/products/tplink-archer-ax12.svg' where slug = 'tplink-archer-ax12';
update articles set featured_image = '/products/tplink-archer-be550.svg' where slug = 'tplink-archer-be550';
update articles set featured_image = '/products/asus-rt-ax52.svg' where slug = 'asus-rt-ax52';
