"use client";
import { useState } from "react";
import { useRouter } from "next/navigation";
import { createClient } from "@supabase/supabase-js";
import { signUpload } from "./actions";
export default function Uploader() {
  const router = useRouter();
  const [busy, setBusy] = useState(false);
  const [msg, setMsg] = useState("");
  async function go(files: FileList | null) {
    if (!files?.length) return;
    setBusy(true); setMsg("");
    const sb = createClient(process.env.NEXT_PUBLIC_SUPABASE_URL!, process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!);
    let ok = 0; const errs: string[] = [];
    for (const f of Array.from(files)) {
      const r = await signUpload(f.type, f.size);
      if ("error" in r) { errs.push(`${f.name}: ${r.error}`); continue; }
      const { error } = await sb.storage.from("media").uploadToSignedUrl(r.path, r.token, f, { contentType: f.type });
      if (error) errs.push(`${f.name}: ${error.message}`); else ok++;
    }
    setBusy(false); router.refresh();
    setMsg(`${ok} uploaded.${errs.length ? " Problems: " + errs.join("; ") : ""}`);
  }
  return (
    <div className="panel mt-8">
      <label className="block cursor-pointer text-center" style={{ border: "2px dashed #111", padding: "2.5rem 1rem" }}>
        <b>{busy ? "Uploading…" : "Choose images or videos (you can select several)"}</b>
        <span className="block text-sm" style={{ color: "var(--muted)" }}>Images: JPG, PNG, WebP, GIF up to 5 MB · Videos: MP4, WebM up to 45 MB. Uploads start immediately.</span>
        <input type="file" multiple disabled={busy} className="sr-only"
          accept="image/jpeg,image/png,image/webp,image/gif,video/mp4,video/webm"
          onChange={e => { go(e.target.files); e.target.value = ""; }} />
      </label>
      {msg && <p role="status" className="mt-3 text-sm font-bold">{msg}</p>}
    </div>
  );
}
