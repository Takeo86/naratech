insert into storage.buckets (id, name, public) values ('media', 'media', true) on conflict (id) do nothing;
create policy "media public read" on storage.objects for select using (bucket_id = 'media');
create policy "media admin insert" on storage.objects for insert to authenticated
  with check (bucket_id = 'media' and (auth.jwt()->'app_metadata'->>'is_admin')::boolean is true);
create policy "media admin delete" on storage.objects for delete to authenticated
  using (bucket_id = 'media' and (auth.jwt()->'app_metadata'->>'is_admin')::boolean is true);
-- Allow videos, enforce a 45 MB limit and allowed types on the server side
update storage.buckets set file_size_limit = 47185920,
  allowed_mime_types = array['image/jpeg','image/png','image/webp','image/gif','video/mp4','video/webm'] where id = 'media';
