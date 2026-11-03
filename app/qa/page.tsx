import Markdown from "react-markdown";
import { listQA } from "@/lib/articles";
export const dynamic = "force-dynamic";
export const metadata = { title: "پاسخ به سوالات | NaraTech" };
export default async function QA({ searchParams }: { searchParams: Promise<{ q?: string }> }) {
  const sp = await searchParams;
  const items = await listQA(sp.q);
  return (
    <main>
      <section className="wide page-head" dir="ltr">
        <span className="count">Switching &amp; Advanced Routing</span>
        <h1 className="display mega">Q&amp;A</h1>
        <div className="rule" />
      </section>
      <div className="wrap">
        <form action="/qa" className="filters">
          <input name="q" defaultValue={sp.q} placeholder="جستجو در سوالات…" aria-label="Search" className="field" style={{ minWidth: "16rem" }} />
          <button className="btn">جستجو</button>
        </form>
        {items.length === 0 && <p className="mt-6 font-bold">سوالی یافت نشد.</p>}
        <div className="mt-4">
          {items.map(i => (
            <details key={i.id} className="qa">
              <summary>{i.title}</summary>
              <div className="paper prose-a"><Markdown>{i.content}</Markdown></div>
            </details>
          ))}
        </div>
      </div>
    </main>
  );
}
