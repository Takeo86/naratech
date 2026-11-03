import { notFound } from "next/navigation";
import Link from "next/link";
import Markdown from "react-markdown";
import { getArticle, getSimilar } from "@/lib/articles";
import { priceOf } from "@/lib/price";
import ProductCard from "@/components/ProductCard";
export const dynamic = "force-dynamic";
const yt = (u: string) => u.match(/(?:youtu\.be\/|youtube\.com\/(?:watch\?v=|embed\/))([\w-]{11})/)?.[1];
const SPECS: [string, string][] = [["brand", "برند"], ["ports", "پورت‌ها"], ["uplink", "آپلینک"], ["poe", "PoE"], ["mgmt", "نوع مدیریت / سیستم‌عامل"], ["form", "فرم و نصب"]];
export default async function Article({ params }: { params: Promise<{ slug: string }> }) {
  const a = await getArticle((await params).slug);
  if (!a) notFound();
  const price = priceOf(a.content);
  const similar = a.specs ? await getSimilar(a.category_id, a.slug) : [];
  const updated = new Date(a.updated_at ?? a.published_at).toLocaleDateString("fa-IR");
  return (
    <main>
      <header className="wide article-hero">
        <Link href={a.specs ? "/articles" : "/qa"} className="outline-btn">→ بازگشت به فهرست</Link>
        <h1 className="title-xl">{a.title}</h1>
        {price && <div className="price-box">{price}</div>}
        {a.specs && <div className="mt-4"><Link href={`/compare?p=${a.slug}`} className="outline-btn">مقایسهٔ فنی با محصولات دیگر</Link></div>}
        <time className="count mt-4">آخرین بروزرسانی: {updated}</time>
      </header>
      <article className="wrap wrap-read">
        {a.featured_image && <img src={a.featured_image} alt={a.title} className="cover" loading="lazy" />}
        {a.specs && (
          <div className="mb-8">
            <table className="cmp specs"><tbody>
              {SPECS.map(([k, l]) => <tr key={k}><th scope="row">{l}</th><td>{a.specs[k] || "—"}</td></tr>)}
            </tbody></table>
            <p className="note">مشخصات از منابع عمومی گردآوری شده است؛ پیش از خرید با برگهٔ داده (datasheet) سازنده تطبیق دهید.</p>
          </div>
        )}
        {/* No raw HTML is rendered. Video: [video](youtube link or uploaded .mp4/.webm link) on its own line. */}
        <div className="paper prose-a">
          <Markdown components={{ a: ({ href, children }) => {
            const id = href ? yt(href) : undefined;
            const file = href && /\.(mp4|webm)(\?|$)/i.test(href);
            if (String(children) === "video" && id) return <iframe className="yt" src={`https://www.youtube-nocookie.com/embed/${id}`} title="Video" loading="lazy" allowFullScreen />;
            if (String(children) === "video" && file) return <video className="yt" controls preload="metadata" src={href} />;
            return <a href={href}>{children}</a>;
          } }}>{a.content}</Markdown>
        </div>
      </article>
      {similar.length > 0 && (
        <section className="wide" style={{ marginTop: "4rem" }}>
          <div className="section-label">Similar products</div>
          <div className="grid4">{similar.map((s: any) => <ProductCard key={s.id} a={s} />)}</div>
        </section>
      )}
    </main>
  );
}
