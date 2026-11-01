import { redirect, notFound } from "next/navigation";
import { revalidatePath } from "next/cache";
import Link from "next/link";
import { requireAdmin } from "@/lib/supabase/server";
import { categoryId } from "@/lib/categories";
import { listImages, okImg } from "@/lib/media";
import ImageField from "@/components/ImageField";
const SLUG = /^[a-z0-9]+(?:-[a-z0-9]+)*$/;
async function update(fd: FormData) {
  "use server";
  const s = await requireAdmin();
  const title = String(fd.get("title") ?? "").trim(), slug = String(fd.get("slug") ?? "").trim(), content = String(fd.get("content") ?? "");
  if (!title || !content || !SLUG.test(slug)) throw new Error("Invalid input");
  const img = String(fd.get("featured_image") ?? "").trim();
  const { error } = await s.from("articles").update({ title, slug, content, excerpt: String(fd.get("excerpt") ?? "").slice(0, 300),
    category_id: await categoryId(s, String(fd.get("category") ?? "")), featured_image: okImg(img) ? img : null, specs: Object.fromEntries(["brand","ports","uplink","poe","mgmt","form"].map(k => [k, String(fd.get("spec_" + k) ?? "").trim().slice(0, 80)])), updated_at: new Date().toISOString() }).eq("id", String(fd.get("id")));
  if (error) throw new Error("Could not save");
  revalidatePath("/admin"); revalidatePath("/articles"); revalidatePath("/");
  redirect("/admin");
}
export default async function Edit({ params }: { params: Promise<{ id: string }> }) {
  const s = await requireAdmin();
  const { data: a } = await s.from("articles").select("*, categories(name)").eq("id", (await params).id).maybeSingle();
  if (!a) notFound();
  const imgs = await listImages(s);
  return (
    <main dir="ltr" className="wrap" style={{ maxWidth: "52rem", paddingTop: "4rem" }}>
      <Link href="/admin" className="btn-ghost">← Dashboard</Link>
      <h1 className="text-3xl font-bold mt-4">Edit product</h1>
      <form action={update} className="panel mt-8">
        <input type="hidden" name="id" value={a.id} />
        <label className="label">Title<input name="title" required defaultValue={a.title} className="field" dir="auto" /></label>
        <label className="label">Slug<input name="slug" required defaultValue={a.slug} pattern="[a-z0-9]+(-[a-z0-9]+)*" className="field" /></label>
        <label className="label">Excerpt<input name="excerpt" maxLength={300} defaultValue={a.excerpt ?? ""} className="field" dir="auto" /></label>
        <label className="label">Category<input name="category" defaultValue={a.categories?.name ?? ""} className="field" dir="auto" /></label>
        <ImageField imgs={imgs} current={a.featured_image} />
        <fieldset className="mt-6"><legend className="label">Technical specs (used on the Compare page)</legend>
          {([["brand","Brand"],["ports","Ports"],["uplink","Uplink"],["poe","PoE"],["mgmt","Management / OS"],["form","Form factor"]] as const).map(([k, l]) => (
            <label key={k} className="label">{l}<input name={"spec_" + k} defaultValue={a.specs?.[k] ?? ""} className="field" dir="auto" /></label>))}
        </fieldset>
        <label className="label">Description (Markdown, include the price)<textarea name="content" required rows={18} defaultValue={a.content} className="field" dir="auto" style={{ fontFamily: "ui-monospace,monospace" }} /></label>
        <button className="btn mt-5">Save changes</button>
      </form>
    </main>
  );
}
