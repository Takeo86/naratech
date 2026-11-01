// Reads the price from the description: the bold text right after the heading "قیمت تقریبی"
export function priceOf(content?: string) {
  const m = content?.match(/قیمت تقریبی[^\n]*\n+\s*\*\*([\s\S]+?)\*\*/);
  return m?.[1].replace(/\s*\(.*?\)/g, "").trim();
}
