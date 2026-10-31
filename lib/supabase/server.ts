import { createServerClient } from "@supabase/ssr";
import { cookies } from "next/headers";
export async function supa() {
  const store = await cookies();
  return createServerClient(process.env.NEXT_PUBLIC_SUPABASE_URL!, process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!, {
    cookies: { getAll: () => store.getAll(),
      setAll: (l) => { try { l.forEach(c => store.set(c.name, c.value, c.options)); } catch {} } },
  });
}
// Call at the top of EVERY admin server action. Throws unless the user is the admin.
export async function requireAdmin() {
  const s = await supa();
  const { data: { user } } = await s.auth.getUser();
  if (!user || user.app_metadata?.is_admin !== true) throw new Error("Unauthorized");
  return s;
}
