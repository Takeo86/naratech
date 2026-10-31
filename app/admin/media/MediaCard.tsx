"use client";
import { useState } from "react";
import { removeMedia } from "./actions";
export default function MediaCard({ name, url, video }: { name: string; url: string; video: boolean }) {
  const [copied, setCopied] = useState("");
  const copy = async (text: string, label: string) => { await navigator.clipboard.writeText(text); setCopied(label); setTimeout(() => setCopied(""), 1500); };
  return (
    <div className="panel" style={{ padding: "1rem", boxShadow: "4px 4px 0 #111" }}>
      {video ? <video src={url} controls preload="metadata" style={{ width: "100%", aspectRatio: "4/3", objectFit: "cover", background: "#000" }} />
             : <img src={url} alt="" loading="lazy" style={{ width: "100%", aspectRatio: "4/3", objectFit: "cover", background: "#fff" }} />}
      <div className="mt-3 flex flex-wrap gap-x-4 gap-y-1 text-sm">
        <button type="button" className="btn-ghost" onClick={() => copy(url, "url")}>{copied === "url" ? "Copied!" : "Copy link (cover image)"}</button>
        <button type="button" className="btn-ghost" onClick={() => copy(video ? `[video](${url})` : `![description](${url})`, "md")}>{copied === "md" ? "Copied!" : "Copy for article text"}</button>
      </div>
      <details className="mt-2">
        <summary className="btn-danger">Delete</summary>
        <form action={removeMedia} className="mt-1">
          <input type="hidden" name="name" value={name} />
          <p className="text-xs">Permanently deletes this file. Articles using it will show a broken image.</p>
          <button className="btn-danger underline">Yes, delete</button>
        </form>
      </details>
    </div>
  );
}
