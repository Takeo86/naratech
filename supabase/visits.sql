-- Visitor counter: one row, two small functions
create table if not exists site_stats (
  id int primary key default 1 check (id = 1),
  visits bigint not null default 0
);
insert into site_stats (id, visits) values (1, 0) on conflict (id) do nothing;
alter table site_stats enable row level security;
drop policy if exists "public read stats" on site_stats;
create policy "public read stats" on site_stats for select using (true);

create or replace function increment_visits() returns bigint
language sql security definer set search_path = public as
$$ update site_stats set visits = visits + 1 where id = 1 returning visits; $$;

create or replace function get_visits() returns bigint
language sql security definer set search_path = public as
$$ select visits from site_stats where id = 1; $$;

grant execute on function increment_visits() to anon, authenticated;
grant execute on function get_visits() to anon, authenticated;
