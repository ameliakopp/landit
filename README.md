# CLOCKED

The internship quiz that tells you the truth. Two quizzes:

1. **What's your internship archetype?** 12 questions, a clarity score out of 100, one of five archetypes (Explorer, Shotgun, Detective, Builder, Closer) and three things to do next.
2. **Which career are you actually built for?** 14 questions, including rating real tasks, then top matches with a % and the role to search for. A resume on file nudges the matches.

Students sign in with LinkedIn (or email), upload a resume as a PDF, and the app fills in school, major, grad year, experience and skills. The PDF is read in the browser; the file itself is not uploaded.

Live: https://ameliakopp.github.io/landit/

## Turning on "Continue with LinkedIn"

LinkedIn only shares name, email and photo with apps like this (job history is restricted to LinkedIn partners), which is why the resume upload fills in experience.

1. Go to https://www.linkedin.com/developers/apps and create an app (you'll need a LinkedIn company page; any page you admin works).
2. In the app's **Products** tab, add **Sign In with LinkedIn using OpenID Connect**.
3. In the **Auth** tab, add this redirect URL: `https://bzumycapvgqkejenexpq.supabase.co/auth/v1/callback`
4. Copy the **Client ID** and **Client Secret**.
5. In Supabase: **Authentication → Sign In / Providers → LinkedIn (OIDC)**, switch it on, paste the Client ID and Secret, save.
6. In Supabase: **Authentication → URL Configuration**, set Site URL to `https://ameliakopp.github.io/landit/` and add the same URL under Redirect URLs.

The app checks whether LinkedIn is switched on and shows email sign-in until it is.
