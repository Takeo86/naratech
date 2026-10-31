"use client";
import { useRef, useState } from "react";
import { createClient } from "@supabase/supabase-js";
import { signUpload } from "@/app/admin/media/actions";
export default function ImageField({ imgs, current }: { imgs: string[]; current?: string | null }) {
  const [value, setValue] = useState(current ?? "");
  const [busy, setBusy] = useState(false);
  const [msg, setMsg] = useState("");
  const input = useRef<HTMLInputElement>(null);
  async function upload(f?: File) {
    if (!f) return;
    setBusy(true); setMsg("");
    const r = await signUpload(f.type, f.size);
    if ("error" in r || f.type.startsWith("video/")) { setMsg("error" in r ? r.error : "Please choose an image."); setBusy(false); return; }
    const sb = createClient(process.env.NEXT_PUBLIC_SUPABASE_URL!, process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!);
    const { error } = await sb.storage.from("media").uploadToSignedUrl(r.path, r.token, f, { contentType: f.type });
    setBusy(false);
    if (error) setMsg("Upload failed: " + error.message); else { setValue(r.url); setMsg("Uploaded. Remember to click Save."); }
  }
  const lib = current && !imgs.includes(current) ? [current, ...imgs] : imgs;
  return (
    <div className="mt-4">
      <span className="label">Image</span>
      <input type="hidden" name="featured_image" value={value} />
      <div className="mt-2 flex flex-wrap items-center gap-5"
        onDragOver={e => e.preventDefault()} onDrop={e => { e.preventDefault(); upload(e.dataTransfer.files?.[0]); }}>
        <div style={{ width: 160, height: 160, border: "2px solid #111", background: "#fff", display: "grid", placeItems: "center" }}>
          {value ? <img src={value} alt="" style={{ width: "100%", height: "100%", objectFit: "contain" }} /> : <span className="text-xs">No image</span>}
        </div>
        <div className="flex flex-col items-start gap-3">
          <button type="button" className="btn" disabled={busy} onClick={() => input.current?.click()}>{busy ? "Uploading…" : "Upload image"}</button>
          <input ref={input} type="file" className="sr-only" accept="image/jpeg,image/png,image/webp,image/gif" onChange={e => { upload(e.target.files?.[0]); e.target.value = ""; }} />
          <span className="text-xs">or drag an image onto the box</span>
          {value && <button type="button" className="btn-danger" onClick={() => setValue("")}>Remove image</button>}
        </div>
      </div>
      {msg && <p role="status" className="mt-2 text-sm font-bold">{msg}</p>}
      {lib.length > 0 && (
        <details className="mt-3"><summary className="btn-ghost cursor-pointer">Or choose from uploaded images</summary>
          <div className="mt-2 grid gap-3" style={{ gridTemplateColumns: "repeat(auto-fill,minmax(6rem,1fr))" }}>
            {lib.map(u => (
              <button type="button" key={u} onClick={() => setValue(u)} style={{ border: value === u ? "3px solid #111" : "2px solid rgba(17,17,17,.3)", background: "#fff", padding: 4 }}>
                <img src={u} alt="" loading="lazy" style={{ width: "100%", aspectRatio: "1/1", objectFit: "contain" }} /></button>
            ))}
          </div>
        </details>
      )}
    </div>
  );
}
