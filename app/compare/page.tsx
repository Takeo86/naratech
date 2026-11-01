import Link from "next/link";
import { listAllTitles, getForCompare } from "@/lib/articles";
import { priceOf } from "@/lib/price";
export const dynamic = "force-dynamic";
export const metadata = { title: "مقایسه فنی | NaraTech" };
const ROWS: [string, string][] = [
  ["brand", "برند"], ["ports", "پورت‌ها"], ["uplink", "آپلینک"], ["poe", "PoE"],
  ["mgmt", "نوع مدیریت / سیستم‌عامل"], ["form", "فرم و نصب"],
];
export default async function Compare({ searchParams }: { searchParams: Promise<{ p?: string | string[] }> }) {
  const sp = await searchParams;
  const slugs = (Array.isArray(sp.p) ? sp.p : sp.p ? [sp.p] : []).filter(Boolean).slice(0, 4);
  const [all, items] = await Promise.all([listAllTitles(), getForCompare(slugs)]);
  const same = (vals: string[]) => vals.every(v => v === vals[0]);
  const rows: [string, string[]][] = [
    ["دسته‌بندی", items.map(i => i.categories?.name ?? "—")],
    ...ROWS.map(([k, label]) => [label, items.map(i => i.specs?.[k] || "—")] as [string, string[]]),
    ["قیمت تقریبی", items.map(i => priceOf(i.content) ?? "—")],
  ];
  return (
    <main>
      <section className="wide page-head" dir="ltr">
        <span className="count">Compare / up to 4</span>
        <h1 className="display mega">Compare</h1>
        <div className="rule" />
      </section>
      <div className="wide">
        <form action="/compare" className="picker mt-6">
          {[0, 1, 2, 3].map(i => (
            <label key={i} className="label" style={{ marginTop: 0 }}>محصول {i + 1}
              <select name="p" defaultValue={slugs[i] ?? ""} className="field">
                <option value="">—</option>
                {all.map((a: any) => <option key={a.slug} value={a.slug}>{a.title}</option>)}
              </select>
            </label>
          ))}
          <div style={{ alignSelf: "end" }}><button className="btn">مقایسه</button></div>
        </form>
        {items.length < 2 ? (
          <p className="mt-10 font-bold">حداقل دو محصول را انتخاب کنید تا جدول مقایسه نمایش داده شود.</p>
        ) : (
          <div className="cmp-wrap mt-8">
            <table className="cmp">
              <thead><tr><th scope="col" />
                {items.map(i => (
                  <th key={i.id} scope="col">
                    {i.featured_image ? <img src={i.featured_image} alt="" /> : <div className="thumb" style={{ margin: "0 auto", width: "6rem" }} aria-hidden />}
                    <Link href={`/articles/${i.slug}`} className="btn-ghost">{i.title}</Link>
                  </th>))}
              </tr></thead>
              <tbody>
                {rows.map(([label, vals]) => (
                  <tr key={label}><th scope="row">{label}</th>
                    {vals.map((v, c) => <td key={c} className={same(vals) ? "same" : ""}>{v}</td>)}
                  </tr>))}
              </tbody>
            </table>
            <p className="mt-3 text-sm">ردیف‌هایی که مقدارشان در همهٔ محصولات یکسان است، کم‌رنگ نمایش داده می‌شوند. مقادیر «نامشخص» یعنی در منابع یافت‌شده منتشر نشده‌اند.</p>
          </div>
        )}
      </div>
    </main>
  );
}
