import "./globals.css";
import Link from "next/link";
import { Vazirmatn, Anton, Noto_Sans_Arabic } from "next/font/google";
const body = Vazirmatn({ subsets: ["arabic", "latin"], display: "swap", variable: "--font-body" });
const display = Anton({ weight: "400", subsets: ["latin"], display: "swap", variable: "--font-display" });
const nav = Noto_Sans_Arabic({ subsets: ["arabic"], weight: ["600"], display: "swap", variable: "--font-nav" });
export const metadata = { title: "NaraTech", description: "IT blog" };
export default function Root({ children }: { children: React.ReactNode }) {
  return (
    <html lang="fa" dir="rtl" className={`${body.variable} ${display.variable} ${nav.variable}`}>
      <body>
        <header className="site-header"><div className="wide">
          <Link href="/" className="brand">NaraTech</Link>
          <nav className={nav.className}><Link href="/" className="nav-link">خانه</Link><Link href="/articles" className="nav-link">پاسخ به سوالات</Link></nav>
        </div></header>
        {children}
        <footer className="site-footer"><div className="wide"><span>© {new Date().getFullYear()} NaraTech</span><span>#NaraTech</span></div></footer>
      </body>
    </html>
  );
}