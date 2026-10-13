# m4tias-epk

Public electronic press kit for M4TIAS, a UK garage DJ and producer in Denver. Built and maintained by OMNIS Industries on the artist's behalf.

- `index.html` — the press kit agencies see. Self-contained; one Google Font; two YouTube embeds. Serve it with GitHub Pages or send the file.
- `EPK.md` — the same facts in plain text, for the OMNIS Agency Bots on the artist's account to read and quote from.
- `SOURCES.md` — where every public claim on the page came from.
- `CHANGELOG.md` — dated record of what changed and why.

## How the OMNIS Agency Bots use this repo
- Read-only. Bots never push here. A change request goes to Stone as a `[MATIAS][DECISION]`.
- When pitching a venue or agency, link the live page and attach nothing else unless asked.
- Quote `EPK.md` verbatim for facts. If a fact is not in `EPK.md`, it is not public. Do not improvise numbers, dates, or fees.
- Fees are never quoted by a Bot. Route every fee question to management.

## Publishing with GitHub Pages
Settings → Pages → Source: Deploy from a branch → `main` / `(root)`. The page serves at `https://<owner>.github.io/m4tias-epk/`.

## Updating
Edit `index.html` and `EPK.md` together, note it in `CHANGELOG.md`, commit. Keep the two in sync.
