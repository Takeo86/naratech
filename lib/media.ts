export async function listImages(s: any): Promise<string[]> {
  const { data } = await s.storage.from("media").list("", { limit: 200, sortBy: { column: "created_at", order: "desc" } });
  return (data ?? []).filter((f: any) => /\.(jpg|png|webp|gif)$/.test(f.name)).map((f: any) => s.storage.from("media").getPublicUrl(f.name).data.publicUrl);
}
export const okImg = (u: string) => u.startsWith("https://") || u.startsWith("/products/");
