# CLOCKED (formerly Landit): notes for Claude

- The website (https://ameliakopp.github.io/landit/) and the installed phone/desktop app are the same code. Every change ships to both by pushing to `main`; GitHub Pages deploys it.
- When changing or replacing anything in `img/` or `icons/`, bump `VERSION` in `sw.js` so installed apps drop their cached copies.
- The app is two quizzes: a 22-question readiness quiz (score %, stage 1–5, four area scores, 3 weekly next steps) and a career match quiz, plus a dashboard and a profile built from LinkedIn sign-in and a resume upload. The old workshops and the character archetypes/photos were removed (they are in git history).
- The old Claude artifact copy is retired; don't update it.
