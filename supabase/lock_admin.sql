-- Admin can only READ and UPDATE articles (no create, no delete) and cannot change categories
drop policy if exists "admin all articles" on articles;
drop policy if exists "admin all categories" on categories;
create policy "admin read articles" on articles for select to authenticated
  using ((auth.jwt()->'app_metadata'->>'is_admin')::boolean is true);
create policy "admin update articles" on articles for update to authenticated
  using ((auth.jwt()->'app_metadata'->>'is_admin')::boolean is true)
  with check ((auth.jwt()->'app_metadata'->>'is_admin')::boolean is true);
