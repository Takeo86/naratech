import { notFound } from "next/navigation";
import Link from "next/link";
import Markdown from "react-markdown";
import { getArticle } from "@/lib/articles";
export const dynamic = "force-dynamic";
const yt = (u: string) => u.match(/(?:youtu\.be\/|youtube\.com\/(?:watch\?v=|embed\/))([\w-]{11})/)?.[1];
export default async function Article({ params }: { params: Promise<{ slug: string }> }) {
  const a = await getArticle((await params).slug);
  if (!a) notFound();
  return (
    <main>
      <header className="wide article-hero">
        <Link href="/articles" className="outline-btn">→ همه مقالات</Link>
        <h1 className="title-xl">{a.title}</h1>
        {a.published_at && <time className="count mt-4">{new Date(a.published_at).toLocaleDateString("fa-IR")}</time>}
      </header>
      <article className="wrap wrap-read">
        {a.featured_image && <img src={a.featured_image} alt={a.title} className="cover" loading="lazy" />}
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
    </main>
  );
}
