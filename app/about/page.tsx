import Link from "next/link";
export const metadata = { title: "درباره ما | NaraTech" };
export default function About() {
  return (
    <main>
      <header className="wide article-hero">
        <span className="count">About</span>
        <h1 className="title-xl">درباره ما</h1>
      </header>
      <section className="wrap wrap-read">
        <div className="paper prose-a">
          <p>این وبلاگ توسط آقای سجاد سمیعی دانشجوی ترم آخر رشته مهندسی شبکه های کامپیوتری جهت پاسخ به سوالات درس سوئیچینگ و مسیریابی پیشرفته، با استفاده از هوش مصنوعی Claude ai و رابط خط فرمان Git Bash بر بستر پلتفرم ابری Vercel و اتصال این بستر ابری با Github تهیه شده است.</p>
          <p><Link href="/articles">مشاهدهٔ محصولات ←</Link></p>
        </div>
      </section>
    </main>
  );
}
