"use client";
import { useEffect, useState } from "react";
import { usePathname } from "next/navigation";
import { createClient } from "@supabase/supabase-js";
// Counts one visit per browser session (not every page view). Admin pages are not counted.
export default function VisitCounter() {
  const [n, setN] = useState<number | null>(null);
  const path = usePathname();
  useEffect(() => {
    if (path.startsWith("/admin")) return;
    (async () => {
      try {
        const counted = sessionStorage.getItem("visit-counted") === "1";
        if (!counted) sessionStorage.setItem("visit-counted", "1");
        const sb = createClient(process.env.NEXT_PUBLIC_SUPABASE_URL!, process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!);
        const { data } = await sb.rpc(counted ? "get_visits" : "increment_visits");
        if (!counted) sessionStorage.setItem("visit-counted", "1");
        if (data !== null && data !== undefined) setN(Number(data));
      } catch { /* the counter is optional: ignore errors */ }
    })();
  }, [path]);
  if (n === null || path.startsWith("/admin")) return <span />;
  return <span>تعداد بازدید: {n.toLocaleString("fa-IR")}</span>;
}
