create table categories (id uuid primary key default gen_random_uuid(), name text not null, slug text unique not null);
create table articles (
  id uuid primary key default gen_random_uuid(),
  title text not null, slug text unique not null, excerpt text,
  content text not null, featured_image text,
  category_id uuid references categories(id) on delete set null,
  tags text[] default '{}',
  status text not null default 'draft' check (status in ('draft','published')),
  published_at timestamptz, updated_at timestamptz default now(),
  created_at timestamptz default now()
);
create index on articles (status, published_at desc);
alter table categories enable row level security;
alter table articles enable row level security;
-- Public: read categories and ONLY published, non-future articles
create policy "public read categories" on categories for select using (true);
create policy "public read published" on articles for select
  using (status = 'published' and published_at <= now());
-- Admin: is_admin must be set in app_metadata for your one admin user (see README)
create policy "admin all articles" on articles for all to authenticated
  using ((auth.jwt()->'app_metadata'->>'is_admin')::boolean is true)
  with check ((auth.jwt()->'app_metadata'->>'is_admin')::boolean is true);
create policy "admin all categories" on categories for all to authenticated
  using ((auth.jwt()->'app_metadata'->>'is_admin')::boolean is true)
  with check ((auth.jwt()->'app_metadata'->>'is_admin')::boolean is true);
-- Storage: create public bucket "media"; allow insert/delete only for admin
