import Link from "next/link";
export default function ArticleRow({ a, i = 0 }: { a: any; i?: number }) {
  const date = a.published_at ? new Date(a.published_at).toLocaleDateString("fa-IR") : "";
  return (
    <Link href={`/articles/${a.slug}`} className="item">
      <span className="idx">{String(i + 1).padStart(2, "0")}</span>
      <div>
        <div className="meta"><span>{date}</span>{a.categories?.name && <span>· {a.categories.name}</span>}</div>
        <h2>{a.title}</h2>
        {a.excerpt && <p>{a.excerpt}</p>}
      </div>
      {a.featured_image ? <img className="thumb" src={a.featured_image} alt="" loading="lazy" /> : <div className="thumb" aria-hidden />}
    </Link>
  );
}
