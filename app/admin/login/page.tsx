import { redirect } from "next/navigation";
import { supa } from "@/lib/supabase/server";
async function login(fd: FormData) {
  "use server";
  const s = await supa();
  const { error } = await s.auth.signInWithPassword({ email: String(fd.get("email")), password: String(fd.get("password")) });
  if (error) redirect("/admin/login?error=1");
  redirect("/admin");
}
export default async function Login({ searchParams }: { searchParams: Promise<{ error?: string }> }) {
  const err = (await searchParams).error;
  return (
    <main dir="ltr" className="wrap" style={{ maxWidth: "26rem", paddingTop: "6rem" }}>
      <span className="eyebrow">ADMIN</span>
      <h1 className="text-3xl font-bold">Sign in</h1>
      <form action={login} className="panel mt-8">
        {err && <p role="alert" className="text-sm" style={{ color: "#ff8a8a" }}>Invalid credentials or not an admin.</p>}
        <label className="label">Email<input name="email" type="email" required className="field" /></label>
        <label className="label">Password<input name="password" type="password" required className="field" /></label>
        <button className="btn mt-6 w-full">Continue</button>
      </form>
    </main>
  );
}
