import { createServerClient } from "@supabase/ssr";
import { NextResponse, type NextRequest } from "next/server";
export async function middleware(req: NextRequest) {
  let res = NextResponse.next({ request: req });
  const s = createServerClient(process.env.NEXT_PUBLIC_SUPABASE_URL!, process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!, {
    cookies: { getAll: () => req.cookies.getAll(),
      setAll: (l) => { l.forEach(c => req.cookies.set(c.name, c.value));
        res = NextResponse.next({ request: req }); l.forEach(c => res.cookies.set(c.name, c.value, c.options)); } },
  });
  const { data: { user } } = await s.auth.getUser();
  if (req.nextUrl.pathname !== "/admin/login" && user?.app_metadata?.is_admin !== true)
    return NextResponse.redirect(new URL("/admin/login", req.url));
  return res;
}
export const config = { matcher: ["/admin/:path*"] };
