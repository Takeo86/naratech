import Link from "next/link";
import { requireAdmin } from "@/lib/supabase/server";
import Uploader from "./Uploader";
import MediaCard from "./MediaCard";
export default async function Media() {
  const s = await requireAdmin();
  const { data } = await s.storage.from("media").list("", { limit: 200, sortBy: { column: "created_at", order: "desc" } });
  const files = (data ?? []).filter(f => /\.(jpg|png|webp|gif|mp4|webm)$/.test(f.name));
  return (
    <main dir="ltr" className="wrap" style={{ maxWidth: "60rem", paddingTop: "4rem" }}>
      <Link href="/admin" className="btn-ghost">← Dashboard</Link>
      <h1 className="text-3xl font-bold mt-4">Media library</h1>
      <Uploader />
      <h2 className="font-bold mt-10">Uploaded files ({files.length})</h2>
      {files.length === 0 && <p className="mt-3">No files yet.</p>}
      <div className="mt-4 grid gap-5" style={{ gridTemplateColumns: "repeat(auto-fill,minmax(14rem,1fr))" }}>
        {files.map(f => (
          <MediaCard key={f.name} name={f.name} video={/\.(mp4|webm)$/.test(f.name)}
            url={s.storage.from("media").getPublicUrl(f.name).data.publicUrl} />
        ))}
      </div>
    </main>
  );
}
