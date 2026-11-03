import Link from "next/link";
export default function NotFound() {
  return (
    <main className="wide page-head" dir="ltr">
      <span className="count">Error 404</span>
      <h1 className="display mega">Not found</h1>
      <div className="rule" />
      <p className="sub">صفحه‌ای که دنبالش بودید پیدا نشد.</p>
      <Link href="/" className="outline-btn">بازگشت به صفحهٔ اصلی</Link>
    </main>
  );
}
