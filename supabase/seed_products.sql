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
