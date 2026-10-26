# Landit

A week-by-week plan to land an internship, one clear step at a time.

Students take a one-minute quiz, get a countdown to their apply-by date, and work through six steps, each with its own short workshop:

1. Update your LinkedIn
2. Find contacts at your target company
3. Draft your outreach note
4. Prep for the conversation with your contact
5. Update your resume
6. Prep for your interview

## How it's built

- `index.html` is the whole app: plain HTML, CSS and JavaScript, no build step.
- `img/` holds the photos and workshop screenshots.
- Accounts and saved progress use [Supabase](https://supabase.com). Without an account, progress is saved in the browser only.
- `supabase/setup.sql` creates the `students` table and its security rules.

## Making changes

Edit the files on GitHub (pencil icon → **Commit changes**) or ask Claude. GitHub Pages republishes the site automatically after each commit.

## Setup (one time)

1. In Supabase, open **SQL Editor → New query**, paste `supabase/setup.sql`, and click **Run**.
2. In Supabase, open **Authentication → URL Configuration** and set **Site URL** to the live site address (e.g. `https://ameliakopp.github.io/landit/`).
3. In GitHub, open **Settings → Pages**, choose **Deploy from a branch**, branch `main`, folder `/ (root)`.
