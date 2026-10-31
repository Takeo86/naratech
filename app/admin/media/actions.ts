"use server";
import { requireAdmin } from "@/lib/supabase/server";
const T: Record<string, [string, number]> = {
  "image/jpeg": ["jpg", 5], "image/png": ["png", 5], "image/webp": ["webp", 5], "image/gif": ["gif", 5],
  "video/mp4": ["mp4", 45], "video/webm": ["webm", 45],
};
export async function signUpload(type: string, size: number): Promise<{ error: string } | { path: string; token: string; url: string }> {
  const s = await requireAdmin();
  const t = T[type];
  if (!t) return { error: "Allowed: JPG, PNG, WebP, GIF, MP4, WebM." };
  if (size <= 0 || size > t[1] * 1024 * 1024) return { error: `Too large. Limit is ${t[1]} MB.` };
  const path = `${crypto.randomUUID()}.${t[0]}`;   // server-made safe filename
  const { data, error } = await s.storage.from("media").createSignedUploadUrl(path);
  if (error || !data) return { error: "Could not start upload." };
  return { path, token: data.token, url: s.storage.from("media").getPublicUrl(path).data.publicUrl };
}

import { revalidatePath } from "next/cache";
export async function removeMedia(fd: FormData): Promise<void> {
  const s = await requireAdmin();
  const name = String(fd.get("name") ?? "");
  if (!/^[0-9a-f-]{36}\.(jpg|png|webp|gif|mp4|webm)$/.test(name)) return;   // only files this app created
  await s.storage.from("media").remove([name]);
  revalidatePath("/admin/media");
}
