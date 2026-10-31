import Link from "next/link";
// Reads the price from the description: the bold text right after the heading "قیمت تقریبی"
function priceOf(content?: string) {
  const m = content?.match(/قیمت تقریبی[^\n]*\n+\s*\*\*(.+?)\*\*/s);
  return m?.[1].replace(/\s*\(.*?\)/g, "").trim();
}
export default function ProductCard({ a }: { a: any }) {
  const price = priceOf(a.content);
  return (
    <Link href={`/articles/${a.slug}`} className="card">
      {a.featured_image ? <img className="pic" src={a.featured_image} alt={a.title} loading="lazy" /> : <div className="pic ph" aria-hidden />}
      <h2>{a.title}</h2>
      {price && <span className="price">{price}</span>}
    </Link>
  );
}