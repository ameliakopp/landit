# Landit: notes for Claude

- The website (https://ameliakopp.github.io/landit/) and the installed phone/desktop app are the same code. Every change ships to both by pushing to `main`; GitHub Pages deploys it.
- When changing or replacing anything in `img/` or `icons/`, bump `VERSION` in `sw.js` so installed apps drop their cached copies.
- The old Claude artifact copy is retired; don't update it.
