import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";
import Link from "next/link";
import { requireAdmin, supa } from "@/lib/supabase/server";
import { categoryId } from "@/lib/categories";
import { listImages, okImg } from "@/lib/media";
import ImageField from "@/components/ImageField";
const SLUG = /^[a-z0-9]+(?:-[a-z0-9]+)*$/;
const refresh = () => { revalidatePath("/admin"); revalidatePath("/articles"); revalidatePath("/"); };
async function logout() { "use server"; await (await supa()).auth.signOut(); redirect("/admin/login"); }
async function create(fd: FormData) {
  "use server";
  const s = await requireAdmin();
  const title = String(fd.get("title") ?? "").trim(), slug = String(fd.get("slug") ?? "").trim(), content = String(fd.get("content") ?? "");
  if (!title || !content || !SLUG.test(slug)) throw new Error("Invalid input");
  const publish = fd.get("publish") === "on", img = String(fd.get("featured_image") ?? "").trim();
  const { error } = await s.from("articles").insert({ title, slug, content, excerpt: String(fd.get("excerpt") ?? "").slice(0, 300),
    category_id: await categoryId(s, String(fd.get("category") ?? "")), featured_image: okImg(img) ? img : null,
    status: publish ? "published" : "draft", published_at: publish ? new Date().toISOString() : null });
  if (error) throw new Error("Could not save");
  refresh();
}
async function toggle(fd: FormData) {
  "use server";
  const s = await requireAdmin(); const pub = fd.get("status") === "published";
  await s.from("articles").update({ status: pub ? "draft" : "published", published_at: pub ? null : new Date().toISOString(), updated_at: new Date().toISOString() }).eq("id", String(fd.get("id")));
  refresh();
}
async function del(fd: FormData) { "use server"; const s = await requireAdmin(); await s.from("articles").delete().eq("id", String(fd.get("id"))); refresh(); }
export default async function Admin() {
  const s = await requireAdmin();
  const [{ data }, { data: cats }, imgs] = await Promise.all([
    s.from("articles").select("id,title,status,featured_image").order("created_at", { ascending: false }),
    s.from("categories").select("name"), listImages(s)]);
  const rows = (data ?? []) as { id: string; title: string; status: string; featured_image: string | null }[]; const live = rows.filter(r => r.status === "published").length;
  return (
    <main dir="ltr" className="wrap" style={{ maxWidth: "56rem", paddingTop: "4rem" }}>
      <span className="eyebrow">DASHBOARD</span>
      <div className="flex items-center justify-between"><h1 className="text-3xl font-bold">Products</h1>
        <div className="flex items-center gap-5"><Link href="/admin/media" className="btn-ghost">Media</Link><form action={logout}><button className="btn-ghost">Log out</button></form></div></div>
      <div className="mt-8 flex flex-wrap gap-4">
        <div className="panel stat"><b>{rows.length}</b><span>Total</span></div>
        <div className="panel stat"><b>{live}</b><span>Published</span></div>
        <div className="panel stat"><b>{rows.length - live}</b><span>Drafts</span></div>
      </div>
      <details className="panel mt-8"><summary className="font-bold cursor-pointer">+ New product</summary>
        <form action={create}>
          <label className="label">Title<input name="title" required className="field" dir="auto" /></label>
          <label className="label">Slug (English, lowercase, hyphens)<input name="slug" required pattern="[a-z0-9]+(-[a-z0-9]+)*" title="Lowercase English letters, numbers and single hyphens only" className="field" /></label>
          <label className="label">Excerpt<input name="excerpt" maxLength={300} className="field" dir="auto" /></label>
          <label className="label">Category (type new or pick existing)<input name="category" list="cats" className="field" dir="auto" /><datalist id="cats">{((cats ?? []) as { name: string }[]).map((c) => <option key={c.name} value={c.name} />)}</datalist></label>
          <ImageField imgs={imgs} />
          <label className="label">Description (Markdown, include the price)<textarea name="content" required rows={12} className="field" dir="auto" style={{ fontFamily: "ui-monospace,monospace" }} /></label>
          <div className="mt-5 flex items-center justify-between"><label className="text-sm"><input type="checkbox" name="publish" /> Publish now</label><button className="btn">Save</button></div>
        </form></details>
      <div className="mt-10">
        {rows.map(r => (
          <div key={r.id} className="row flex flex-wrap items-center gap-4" style={{ padding: ".8rem 0" }}>
            {r.featured_image ? <img src={r.featured_image} alt="" style={{ width: 44, height: 44, objectFit: "contain", background: "#fff", border: "2px solid #111" }} /> : <div style={{ width: 44, height: 44, background: "#fff", border: "2px dashed #111" }} />}
            <span className="flex-1" dir="auto">{r.title} <span className={`badge ${r.status === "published" ? "live" : ""}`}>{r.status}</span></span>
            <Link href={`/admin/edit/${r.id}`} className="btn-ghost">Edit</Link>
            <form action={toggle}><input type="hidden" name="id" value={r.id} /><input type="hidden" name="status" value={r.status} /><button className="btn-ghost">{r.status === "published" ? "Unpublish" : "Publish"}</button></form>
            <details><summary className="btn-danger">Delete</summary><form action={del}><input type="hidden" name="id" value={r.id} /><button className="btn-danger">Confirm delete</button></form></details>
          </div>
        ))}
      </div>
    </main>
  );
}
