-- Gives the admin full control again (create, edit, publish, delete). Safe to run even if lock_admin.sql was never run.
drop policy if exists "admin read articles" on articles;
drop policy if exists "admin update articles" on articles;
drop policy if exists "admin all articles" on articles;
drop policy if exists "admin all categories" on categories;
create policy "admin all articles" on articles for all to authenticated
  using ((auth.jwt()->'app_metadata'->>'is_admin')::boolean is true)
  with check ((auth.jwt()->'app_metadata'->>'is_admin')::boolean is true);
create policy "admin all categories" on categories for all to authenticated
  using ((auth.jwt()->'app_metadata'->>'is_admin')::boolean is true)
  with check ((auth.jwt()->'app_metadata'->>'is_admin')::boolean is true);
