# CLOCKED (formerly Landit): notes for Claude

- The website (https://ameliakopp.github.io/landit/) and the installed phone/desktop app are the same code. Every change ships to both by pushing to `main`; GitHub Pages deploys it.
- When changing or replacing anything in `img/` or `icons/`, bump `VERSION` in `sw.js` so installed apps drop their cached copies.
- Core idea: "The biggest block is you." Flow: resume upload first (read in the browser, builds a profile with strengths/weaknesses) → self-rated gut check → 10-screen resume-aware readiness quiz (multi-part screens, five areas incl. Self-knowledge: environment, location, pay) → the gap between what they think and their real score → Next steps tab (areas to strengthen, weakest first). Plus a career match quiz, dashboard and profile. Email sign-in only. Old workshops, archetype photos and LinkedIn sign-in were removed (in git history).
- The old Claude artifact copy is retired; don't update it.
