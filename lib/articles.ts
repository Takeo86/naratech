import { createClient } from "@supabase/supabase-js";
export const PAGE_SIZE = 20;
const db = () => createClient(process.env.NEXT_PUBLIC_SUPABASE_URL!, process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!);

export async function listArticles(page = 1, categorySlug?: string, q?: string) {
  const p = Math.max(1, Math.floor(page) || 1);
  const from = (p - 1) * PAGE_SIZE;
  const term = q?.replace(/[%,()]/g, "");
  // inner join ONLY when filtering by category, so uncategorized articles still appear in the main list
  const cat = categorySlug ? "categories!inner(name,slug)" : "categories(name,slug)";
  let query = db().from("articles")
    .select(`id,title,slug,excerpt,content,featured_image,published_at,${cat}`, { count: "exact" })
    .eq("status", "published").lte("published_at", new Date().toISOString())
    .order("published_at", { ascending: false }).order("id")
    .range(from, from + PAGE_SIZE - 1);
  if (categorySlug) query = query.eq("categories.slug", categorySlug);
  if (term) query = query.or(`title.ilike.%${term}%,content.ilike.%${term}%`);
  const { data, count, error } = await query;
  if (error) throw new Error("Failed to load articles");
  return { items: data ?? [], page: p, totalPages: Math.max(1, Math.ceil((count ?? 0) / PAGE_SIZE)) };
}
export async function getArticle(slug: string) {
  const { data } = await db().from("articles").select("*").eq("slug", slug)
    .eq("status", "published").lte("published_at", new Date().toISOString()).maybeSingle();
  return data;
}
export async function listCategories() {
  const { data } = await db().from("categories").select("name,slug").order("name");
  return data ?? [];
}
