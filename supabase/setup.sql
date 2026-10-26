-- Landit database setup.
-- Paste this whole file into Supabase → SQL Editor → New query, then click Run.
-- Safe to run more than once.

create table if not exists public.students (
  id          uuid primary key references auth.users (id) on delete cascade,
  first_name  text,
  company     text,
  steps_done  int  not null default 0,
  state       jsonb not null default '{}'::jsonb,  -- the student's full plan and workshop answers
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now()
);

-- Only signed-in students can reach the table, and only their own row.
alter table public.students enable row level security;

revoke all on public.students from anon;
grant select, insert, update, delete on public.students to authenticated;

drop policy if exists "Students read own row"   on public.students;
drop policy if exists "Students insert own row" on public.students;
drop policy if exists "Students update own row" on public.students;
drop policy if exists "Students delete own row" on public.students;

create policy "Students read own row" on public.students
  for select to authenticated using ((select auth.uid()) = id);

create policy "Students insert own row" on public.students
  for insert to authenticated with check ((select auth.uid()) = id);

create policy "Students update own row" on public.students
  for update to authenticated
  using ((select auth.uid()) = id) with check ((select auth.uid()) = id);

create policy "Students delete own row" on public.students
  for delete to authenticated using ((select auth.uid()) = id);
