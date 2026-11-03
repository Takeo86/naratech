insert into categories (name, slug) values ('پاسخ به سوالات','qa') on conflict (slug) do nothing;

insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$VLAN چیست و چرا استفاده می‌شود؟$t$, 'qa-vlan', $e$VLAN (شبکهٔ محلی مجازی) یک سوئیچ فیزیکی را به چند دامنهٔ پخش (broadcast domain) مستقل تقسیم می‌کند. دستگاه‌های هر VLAN فقط در لایه ۲ با هم ارتباط دارند و برای ارتباط میان VLANها به مسیریابی (روتر یا س$e$, $c$VLAN (شبکهٔ محلی مجازی) یک سوئیچ فیزیکی را به چند دامنهٔ پخش (broadcast domain) مستقل تقسیم می‌کند. دستگاه‌های هر VLAN فقط در لایه ۲ با هم ارتباط دارند و برای ارتباط میان VLANها به مسیریابی (روتر یا سوئیچ لایه ۳) نیاز است.

**مزایا:**
- کاهش ترافیک پخش
- افزایش امنیت با جداسازی بخش‌ها
- انعطاف در طراحی: گروه‌بندی منطقی به‌جای فیزیکی

```
Switch(config)# vlan 10
Switch(config-vlan)# name Sales
Switch(config)# interface fa0/1
Switch(config-if)# switchport mode access
Switch(config-if)# switchport access vlan 10
```$c$, (select id from categories where slug='qa'), 'published', now() - interval '0 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$تفاوت پورت Access و Trunk چیست؟$t$, 'qa-access-trunk', $e$**پورت Access** فقط به یک VLAN تعلق دارد و فریم‌ها را بدون تگ به دستگاه نهایی (مثل کامپیوتر) می‌دهد.$e$, $c$**پورت Access** فقط به یک VLAN تعلق دارد و فریم‌ها را بدون تگ به دستگاه نهایی (مثل کامپیوتر) می‌دهد.

**پورت Trunk** ترافیک چند VLAN را روی یک لینک عبور می‌دهد و فریم‌ها را با تگ استاندارد 802.1Q علامت می‌زند. معمولاً بین دو سوئیچ یا سوئیچ و روتر استفاده می‌شود. VLAN بومی (Native) بدون تگ ارسال می‌شود.

```
Switch(config-if)# switchport mode trunk
Switch(config-if)# switchport trunk allowed vlan 10,20
```
در برخی سوئیچ‌های قدیمی‌تر سیسکو قبل از آن باید `switchport trunk encapsulation dot1q` هم وارد شود.$c$, (select id from categories where slug='qa'), 'published', now() - interval '1 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$پروتکل STP چه مشکلی را حل می‌کند؟$t$, 'qa-stp', $e$در شبکه‌ای که بین سوئیچ‌ها مسیر اضافه (redundant) وجود دارد، بدون کنترل، حلقهٔ لایه ۲ ایجاد می‌شود. فریم‌های پخش بی‌پایان می‌چرخند و باعث **broadcast storm** و ناپایداری جدول MAC می‌شوند.$e$, $c$در شبکه‌ای که بین سوئیچ‌ها مسیر اضافه (redundant) وجود دارد، بدون کنترل، حلقهٔ لایه ۲ ایجاد می‌شود. فریم‌های پخش بی‌پایان می‌چرخند و باعث **broadcast storm** و ناپایداری جدول MAC می‌شوند.

STP (802.1D) با انتخاب یک **Root Bridge** و مسدودکردن برخی پورت‌ها، یک ساختار درختی بدون حلقه می‌سازد. Root Bridge سوئیچی است که کوچک‌ترین Bridge ID (اولویت به‌علاوهٔ MAC) را دارد. مقدار پیش‌فرض اولویت ۳۲۷۶۸ است.

```
Switch(config)# spanning-tree vlan 10 root primary
```
همگرایی STP کلاسیک می‌تواند حدود ۳۰ تا ۵۰ ثانیه طول بکشد.$c$, (select id from categories where slug='qa'), 'published', now() - interval '2 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$RSTP چه فرقی با STP دارد؟$t$, 'qa-rstp', $e$RSTP (802.1w) نسخهٔ سریع‌تر STP است. همگرایی آن معمولاً در حد چند ثانیه یا کمتر است، چون به‌جای تایمرهای طولانی از مکانیزم Proposal/Agreement بین سوئیچ‌ها استفاده می‌کند.$e$, $c$RSTP (802.1w) نسخهٔ سریع‌تر STP است. همگرایی آن معمولاً در حد چند ثانیه یا کمتر است، چون به‌جای تایمرهای طولانی از مکانیزم Proposal/Agreement بین سوئیچ‌ها استفاده می‌کند.

**تفاوت‌ها:**
- حالت‌های پورت: Discarding، Learning و Forwarding (به‌جای پنج حالت STP)
- نقش‌های جدید: Alternate و Backup برای جایگزینی سریع
- پورت‌های Edge (مثل PortFast) مستقیماً Forwarding می‌شوند

```
Switch(config)# spanning-tree mode rapid-pvst
```$c$, (select id from categories where slug='qa'), 'published', now() - interval '3 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$EtherChannel چیست؟$t$, 'qa-etherchannel', $e$EtherChannel چند لینک فیزیکی را به یک لینک منطقی تبدیل می‌کند تا پهنای باند بیشتر و افزونگی داشته باشید. STP این گروه را یک لینک واحد می‌بیند، پس لینک‌ها مسدود نمی‌شوند. در سیسکو معمولاً تا ۸ لینک فعا$e$, $c$EtherChannel چند لینک فیزیکی را به یک لینک منطقی تبدیل می‌کند تا پهنای باند بیشتر و افزونگی داشته باشید. STP این گروه را یک لینک واحد می‌بیند، پس لینک‌ها مسدود نمی‌شوند. در سیسکو معمولاً تا ۸ لینک فعال در یک گروه قرار می‌گیرد.

**روش‌های تشکیل:**
- **LACP** (استاندارد IEEE 802.3ad): حالت‌های active و passive
- **PAgP** (اختصاصی سیسکو): حالت‌های desirable و auto
- **on**: بدون مذاکره (static)

تنظیمات دو طرف (سرعت، دوبلکس، VLANها) باید یکسان باشد.

```
Switch(config)# interface range g0/1 - 2
Switch(config-if-range)# channel-group 1 mode active
```$c$, (select id from categories where slug='qa'), 'published', now() - interval '4 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$Router-on-a-Stick چیست؟$t$, 'qa-router-on-a-stick', $e$روشی برای مسیریابی بین VLANها با **یک روتر و یک لینک Trunk** است. روی اینترفیس روتر برای هر VLAN یک زیراینترفیس (subinterface) ساخته می‌شود که با 802.1Q تگ می‌گیرد و گیت‌وی همان VLAN است.$e$, $c$روشی برای مسیریابی بین VLANها با **یک روتر و یک لینک Trunk** است. روی اینترفیس روتر برای هر VLAN یک زیراینترفیس (subinterface) ساخته می‌شود که با 802.1Q تگ می‌گیرد و گیت‌وی همان VLAN است.

```
Router(config)# interface g0/0.10
Router(config-subif)# encapsulation dot1Q 10
Router(config-subif)# ip address 192.168.10.1 255.255.255.0
```
**عیب:** همهٔ ترافیک بین VLANها از همان یک لینک می‌گذرد و می‌تواند گلوگاه شود. در شبکه‌های بزرگ‌تر از سوئیچ لایه ۳ استفاده می‌شود.$c$, (select id from categories where slug='qa'), 'published', now() - interval '5 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$تفاوت سوئیچ لایه ۲ و لایه ۳ چیست؟$t$, 'qa-l2-vs-l3-switch', $e$سوئیچ لایه ۲ فریم‌ها را بر اساس آدرس MAC ارسال می‌کند و بین VLANها مسیریابی نمی‌کند.$e$, $c$سوئیچ لایه ۲ فریم‌ها را بر اساس آدرس MAC ارسال می‌کند و بین VLANها مسیریابی نمی‌کند.

سوئیچ لایه ۳ علاوه بر آن می‌تواند بسته‌ها را بر اساس آدرس IP مسیریابی کند و این کار را معمولاً با سخت‌افزار (ASIC) و با سرعت بالا انجام می‌دهد. برای مسیریابی بین VLANها از اینترفیس‌های مجازی **SVI** استفاده می‌شود.

```
Switch(config)# ip routing
Switch(config)# interface vlan 10
Switch(config-if)# ip address 192.168.10.1 255.255.255.0
```$c$, (select id from categories where slug='qa'), 'published', now() - interval '6 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$HSRP چیست و چه کاربردی دارد؟$t$, 'qa-hsrp', $e$HSRP پروتکل اختصاصی سیسکو برای **افزونگی گیت‌وی** (First Hop Redundancy) است. دو یا چند روتر یک آدرس IP و MAC مجازی مشترک می‌سازند. یکی Active است و ترافیک را می‌برد و دیگری Standby. اگر Active از کار$e$, $c$HSRP پروتکل اختصاصی سیسکو برای **افزونگی گیت‌وی** (First Hop Redundancy) است. دو یا چند روتر یک آدرس IP و MAC مجازی مشترک می‌سازند. یکی Active است و ترافیک را می‌برد و دیگری Standby. اگر Active از کار بیفتد، Standby جایش را می‌گیرد و کاربران گیت‌وی را عوض نمی‌کنند.

روتری با **اولویت (Priority)** بیشتر Active می‌شود. مقدار پیش‌فرض ۱۰۰ است. برای بازپس‌گیری نقش بعد از بازگشت باید `preempt` فعال شود.

```
Router(config)# interface g0/0
Router(config-if)# standby 1 ip 192.168.10.254
Router(config-if)# standby 1 priority 110
Router(config-if)# standby 1 preempt
```
جایگزین‌های هم‌خانواده: VRRP (استاندارد) و GLBP (اختصاصی سیسکو).$c$, (select id from categories where slug='qa'), 'published', now() - interval '7 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$OSPF چگونه کار می‌کند؟$t$, 'qa-ospf', $e$OSPF یک پروتکل مسیریابی **Link-State** و استاندارد باز است. هر روتر اطلاعات لینک‌های خود را (LSA) با بقیه تبادل می‌کند، پایگاه داده‌ی وضعیت لینک (LSDB) می‌سازد و با الگوریتم **Dijkstra (SPF)** بهترین $e$, $c$OSPF یک پروتکل مسیریابی **Link-State** و استاندارد باز است. هر روتر اطلاعات لینک‌های خود را (LSA) با بقیه تبادل می‌کند، پایگاه داده‌ی وضعیت لینک (LSDB) می‌سازد و با الگوریتم **Dijkstra (SPF)** بهترین مسیر را محاسبه می‌کند.

**نکات مهم:**
- متریک بر اساس Cost است و از پهنای باند به‌دست می‌آید
- شبکه به **Areaها** تقسیم می‌شود و Area 0 ستون فقرات است
- روترها با پیام‌های Hello همسایه می‌شوند
- در شبکه‌های چندمسیره، **DR و BDR** انتخاب می‌شوند
- Administrative Distance آن ۱۱۰ است

```
Router(config)# router ospf 1
Router(config-router)# network 192.168.10.0 0.0.0.255 area 0
```$c$, (select id from categories where slug='qa'), 'published', now() - interval '8 minutes' on conflict (slug) do nothing;
insert into articles (title, slug, excerpt, content, category_id, status, published_at) select $t$تفاوت OSPF و EIGRP چیست؟$t$, 'qa-ospf-vs-eigrp', $e$**OSPF** پروتکل Link-State و استاندارد باز است که از الگوریتم SPF و ساختار سلسله‌مراتبی با Area استفاده می‌کند.$e$, $c$**OSPF** پروتکل Link-State و استاندارد باز است که از الگوریتم SPF و ساختار سلسله‌مراتبی با Area استفاده می‌کند.

**EIGRP** پروتکل پیشرفتهٔ Distance-Vector است که ابتدا اختصاصی سیسکو بود و الگوریتم **DUAL** دارد. متریک پیش‌فرض آن ترکیبی از پهنای باند و تأخیر است. همگرایی سریع و پیکربندی ساده‌تری دارد و از توزیع بار با مسیرهای نابرابر پشتیبانی می‌کند. Administrative Distance مسیرهای داخلی آن ۹۰ است.

| ویژگی | OSPF | EIGRP |
|---|---|---|
| نوع | Link-State | Advanced Distance-Vector |
| متریک | Cost (پهنای باند) | پهنای باند + تأخیر |
| AD | ۱۱۰ | ۹۰ (داخلی) |
| ساختار | Area | بدون Area |$c$, (select id from categories where slug='qa'), 'published', now() - interval '9 minutes' on conflict (slug) do nothing;
