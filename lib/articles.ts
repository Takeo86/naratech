import { createClient } from "@supabase/supabase-js";
export const PAGE_SIZE = 20;
const db = () => createClient(process.env.NEXT_PUBLIC_SUPABASE_URL!, process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!);
const now = () => new Date().toISOString();

async function qaCategoryId() {
  const { data } = await db().from("categories").select("id").eq("slug", "qa").maybeSingle();
  return data?.id as string | undefined;
}

// Product catalog: 20 per page, Q&A entries are excluded
export async function listArticles(page = 1, categorySlug?: string, q?: string, extra: { brand?: string; poe?: boolean } = {}) {
  const p = Math.max(1, Math.floor(page) || 1);
  const from = (p - 1) * PAGE_SIZE;
  const term = q?.replace(/[%,()]/g, "");
  const cat = categorySlug ? "categories!inner(name,slug)" : "categories(name,slug)";
  let query = db().from("articles")
    .select(`id,title,slug,excerpt,content,specs,featured_image,published_at,${cat}`, { count: "exact" })
    .eq("status", "published").lte("published_at", now())
    .order("published_at", { ascending: false }).order("id")
    .range(from, from + PAGE_SIZE - 1);
  const qa = await qaCategoryId();
  if (qa) query = query.or(`category_id.is.null,category_id.neq.${qa}`);
  if (categorySlug) query = query.eq("categories.slug", categorySlug);
  if (term) query = query.or(`title.ilike.%${term}%,content.ilike.%${term}%`);
  if (extra.brand) query = query.eq("specs->>brand", extra.brand);
  if (extra.poe) query = query.ilike("specs->>poe", "%PoE%");
  const { data, count, error } = await query;
  if (error) throw new Error("Failed to load articles");
  return { items: data ?? [], page: p, totalPages: Math.max(1, Math.ceil((count ?? 0) / PAGE_SIZE)) };
}
export async function getArticle(slug: string) {
  const { data } = await db().from("articles").select("*").eq("slug", slug)
    .eq("status", "published").lte("published_at", now()).maybeSingle();
  return data;
}
export async function listCategories() {
  const { data } = await db().from("categories").select("name,slug").neq("slug", "qa").order("name");
  return data ?? [];
}
export async function listBrands() {
  const { data } = await db().from("articles").select("specs").eq("status", "published").not("specs", "is", null);
  return Array.from(new Set((data ?? []).map((r: any) => r.specs?.brand).filter(Boolean))).sort() as string[];
}
export async function listAllTitles() {
  const { data } = await db().from("articles").select("slug,title").eq("status", "published").lte("published_at", now()).not("specs", "is", null).order("title");
  return data ?? [];
}
export async function getForCompare(slugs: string[]) {
  if (!slugs.length) return [];
  const { data } = await db().from("articles").select("id,title,slug,featured_image,content,specs,categories(name)")
    .in("slug", slugs).eq("status", "published").lte("published_at", now());
  const rows = (data ?? []) as any[];
  return slugs.map(s => rows.find(r => r.slug === s)).filter(Boolean) as any[];
}
export async function getSimilar(categoryId: string | null, slug: string) {
  if (!categoryId) return [];
  const { data } = await db().from("articles").select("id,title,slug,featured_image,content,specs")
    .eq("category_id", categoryId).neq("slug", slug).not("specs", "is", null)
    .eq("status", "published").lte("published_at", now()).limit(4);
  return (data ?? []) as any[];
}
export async function listQA(q?: string) {
  const term = q?.replace(/[%,()]/g, "");
  let query = db().from("articles").select("id,title,slug,content,published_at,categories!inner(slug)")
    .eq("categories.slug", "qa").eq("status", "published").lte("published_at", now())
    .order("published_at", { ascending: false }).limit(100);
  if (term) query = query.or(`title.ilike.%${term}%,content.ilike.%${term}%`);
  const { data } = await query;
  return (data ?? []) as any[];
}
