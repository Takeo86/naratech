import Link from "next/link";
import { priceOf } from "@/lib/price";
export default function ProductCard({ a }: { a: any }) {
  const price = priceOf(a.content);
  return (
    <div className="card">
      <Link href={`/articles/${a.slug}`} className="card-link">
        {a.featured_image ? <img className="pic" src={a.featured_image} alt={a.title} loading="lazy" /> : <div className="pic ph" aria-hidden />}
        <h2>{a.title}</h2>
        {price && <span className="price">{price}</span>}
      </Link>
      {a.specs && <Link href={`/compare?p=${a.slug}`} className="addcmp">+ افزودن به مقایسه</Link>}
    </div>
  );
}
