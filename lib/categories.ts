import { createHash } from "crypto";
// Finds a category by name, or creates it. Reuses an existing one so names are never duplicated.
export async function categoryId(s: any, name: string) {
  const n = name.trim().slice(0, 40);
  if (!n) return null;
  const { data: existing } = await s.from("categories").select("id").eq("name", n).limit(1).maybeSingle();
  if (existing) return existing.id;
  const slug = "c-" + createHash("md5").update(n.toLowerCase()).digest("hex").slice(0, 8);
  const { data } = await s.from("categories").upsert({ name: n, slug }, { onConflict: "slug" }).select("id").single();
  return data?.id ?? null;
}
