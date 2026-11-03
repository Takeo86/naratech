import Link from "next/link";
import { listArticles, listCategories, listBrands } from "@/lib/articles";
import ProductCard from "@/components/ProductCard";
type SP = { page?: string; q?: string; cat?: string; brand?: string; poe?: string };
export default async function Articles({ searchParams }: { searchParams: Promise<SP> }) {
  const sp = await searchParams;
  const [{ items, page, totalPages }, cats, brands] = await Promise.all([
    listArticles(Number(sp.page ?? 1), sp.cat, sp.q, { brand: sp.brand, poe: sp.poe === "1" }), listCategories(), listBrands()]);
  const qs = (o: Record<string, string | number | undefined>) => {
    const p = new URLSearchParams(); Object.entries(o).forEach(([k, v]) => v && p.set(k, String(v)));
    return `/articles${p.size ? `?${p}` : ""}`;
  };
  const keep = { cat: sp.cat, q: sp.q, brand: sp.brand, poe: sp.poe };
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
        </nav>
        <form action="/articles" className="filters">
          <input name="q" defaultValue={sp.q} placeholder="جستجو…" aria-label="Search" className="field" />
          <select name="brand" defaultValue={sp.brand ?? ""} className="field" aria-label="Brand">
            <option value="">همهٔ برندها</option>
            {brands.map(b => <option key={b} value={b}>{b}</option>)}
          </select>
          <label className="chk"><input type="checkbox" name="poe" value="1" defaultChecked={sp.poe === "1"} /> فقط دارای PoE</label>
          {sp.cat && <input type="hidden" name="cat" value={sp.cat} />}
          <button className="btn">اعمال فیلتر</button>
          {(sp.q || sp.brand || sp.poe) && <Link href={qs({ cat: sp.cat })} className="btn-ghost">پاک‌کردن فیلترها</Link>}
        </form>
        {items.length === 0 && <p className="mt-10 font-bold">موردی یافت نشد.</p>}
        <div className="grid4">{items.map((a: any) => <ProductCard key={a.id} a={a} />)}</div>
        {totalPages > 1 && (
          <nav aria-label="Pagination" className="pager">
            {page > 1 && <Link href={qs({ page: page - 1, ...keep })}>قبلی</Link>}
            {Array.from({ length: totalPages }, (_, i) => i + 1).map(n => <Link key={n} href={qs({ page: n, ...keep })} aria-current={n === page ? "page" : undefined}>{n}</Link>)}
            {page < totalPages && <Link href={qs({ page: page + 1, ...keep })}>بعدی</Link>}
          </nav>
        )}
      </div>
    </main>
  );
}
