-- 1) move articles from duplicate categories to the one we keep (prefers the seeded 'switch'/'router')
with k as (
  select c.id as dup,
    (select c2.id from categories c2 where c2.name = c.name order by (c2.slug in ('switch','router')) desc, c2.id limit 1) as keep
  from categories c)
update articles a set category_id = k.keep from k where a.category_id = k.dup and k.dup <> k.keep;

-- 2) delete the duplicates
delete from categories c where c.id <> (
  select c2.id from categories c2 where c2.name = c.name order by (c2.slug in ('switch','router')) desc, c2.id limit 1);

-- 3) forbid duplicate names from now on
alter table categories add constraint categories_name_key unique (name);
