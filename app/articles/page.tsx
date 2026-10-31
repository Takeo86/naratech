import Link from "next/link";
import { listArticles, listCategories } from "@/lib/articles";
import ProductCard from "@/components/ProductCard";
export default async function Articles({ searchParams }: { searchParams: Promise<{ page?: string; q?: string; cat?: string }> }) {
  const sp = await searchParams;
  const [{ items, page, totalPages }, cats] = await Promise.all([listArticles(Number(sp.page ?? 1), sp.cat, sp.q), listCategories()]);
  const qs = (o: Record<string, string | number | undefined>) => {
    const p = new URLSearchParams(); Object.entries(o).forEach(([k, v]) => v && p.set(k, String(v)));
    return `/articles${p.size ? `?${p}` : ""}`;
  };
  return (
    <main>
      <section className="wide page-head" dir="ltr">
        <span className="count">Catalog / {String(page).padStart(2, "0")} of {String(totalPages).padStart(2, "0")}</span>
        <h1 className="display mega">Switches &amp; Routers</h1>
        <div className="rule" />
      </section>
      <div className="wide">
        <nav className="tabs" aria-label="Categories">
          <Link href="/articles" className="tab" aria-current={!sp.cat ? "page" : undefined}>همه</Link>
          {cats.map((c: any) => <Link key={c.slug} href={qs({ cat: c.slug })} className="tab" aria-current={sp.cat === c.slug ? "page" : undefined}>{c.name}</Link>)}
          <form action="/articles" className="search"><input name="q" defaultValue={sp.q} placeholder="جستجو…" aria-label="Search" />{sp.cat && <input type="hidden" name="cat" value={sp.cat} />}</form>
        </nav>
        {items.length === 0 && <p className="mt-10 font-bold">موردی یافت نشد.</p>}
        <div className="grid4">{items.map((a: any) => <ProductCard key={a.id} a={a} />)}</div>
        {totalPages > 1 && (
          <nav aria-label="Pagination" className="pager">
            {page > 1 && <Link href={qs({ page: page - 1, cat: sp.cat, q: sp.q })}>قبلی</Link>}
            {Array.from({ length: totalPages }, (_, i) => i + 1).map(n => <Link key={n} href={qs({ page: n, cat: sp.cat, q: sp.q })} aria-current={n === page ? "page" : undefined}>{n}</Link>)}
            {page < totalPages && <Link href={qs({ page: page + 1, cat: sp.cat, q: sp.q })}>بعدی</Link>}
          </nav>
        )}
      </div>
    </main>
  );
}
