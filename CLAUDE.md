# CLOCKED (formerly Landit): notes for Claude

- The website (https://ameliakopp.github.io/landit/) and the installed phone/desktop app are the same code. Every change ships to both by pushing to `main`; GitHub Pages deploys it.
- When changing or replacing anything in `img/` or `icons/`, bump `VERSION` in `sw.js` so installed apps drop their cached copies.
- The app is now two BuzzFeed-style quizzes (archetype + clarity score, career match) plus a profile built from LinkedIn sign-in and a resume upload. The old step-by-step workshops were removed (they are in git history before the CLOCKED rebuild).
- The old Claude artifact copy is retired; don't update it.
