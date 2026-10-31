import Link from "next/link";
import { listArticles } from "@/lib/articles";
import ProductCard from "@/components/ProductCard";
const Photo = ({ a, cls }: { a: any; cls: string }) => (
  <Link href={`/articles/${a.slug}`} className={`polaroid ${cls}`}>
    {a.featured_image ? <img src={a.featured_image} alt="" /> : <div className="ph" />}
    <span>{a.title}</span>
  </Link>
);
export default async function Home() {
  const { items } = await listArticles(1);
  const [a, b] = items as any[];
  return (
    <main>
      <section className="poster">
        <div className="wide poster-in">
          <span className="count">IT Journal / {new Date().getFullYear()}</span>
          {a && <Photo a={a} cls="p1" />}
          {b && <Photo a={b} cls="p2" />}
          <h1 className="display mega">NaraTech</h1>
          <div className="rule"><Link href="/articles" className="read-dot">READ</Link></div>
          <p className="sub">سوییچ‌ها و روترهای<br />بازار ایران</p>
          <Link href="/articles" className="outline-btn">مقالات را بخوان ←</Link>
          <div className="poster-foot"><span>Switches · Routers · Networking</span><span>#NaraTech</span></div>
        </div>
      </section>
      <div className="wide">
        <div className="section-label">Catalog</div>
        <div className="grid4">{items.slice(0, 8).map((x: any) => <ProductCard key={x.id} a={x} />)}</div>
        <div className="mt-8"><Link href="/articles" className="outline-btn">مشاهدهٔ همه محصولات ←</Link></div>
      </div>
    </main>
  );
}
