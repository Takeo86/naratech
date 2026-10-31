import Link from "next/link";
export default function ImagePicker({ imgs, current }: { imgs: string[]; current?: string | null }) {
  const list = current && !imgs.includes(current) ? [current, ...imgs] : imgs;
  const box = { border: "2px solid #111", padding: ".4rem", background: "#fff", display: "block" } as const;
  return (
    <fieldset className="mt-4">
      <legend className="label">Image (pick one; upload new ones in <Link href="/admin/media" className="btn-ghost">Media</Link>)</legend>
      <div className="mt-2 grid gap-3" style={{ gridTemplateColumns: "repeat(auto-fill,minmax(7rem,1fr))" }}>
        <label className="text-center text-xs" style={box}><input type="radio" name="featured_image" value="" defaultChecked={!current} /> No image</label>
        {list.map(u => (
          <label key={u} style={box}><input type="radio" name="featured_image" value={u} defaultChecked={current === u} />
            <img src={u} alt="" loading="lazy" style={{ width: "100%", aspectRatio: "1/1", objectFit: "contain" }} /></label>
        ))}
      </div>
    </fieldset>
  );
}
