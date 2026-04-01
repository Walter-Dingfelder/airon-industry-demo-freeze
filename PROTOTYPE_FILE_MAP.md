# A.I.R.O.N. Prototype File Map

## Primary runtime files
- `index.html` — main A.I.R.O.N. demo shell
- `catastrophe/index.html` — C.A.T.A.S.T.R.O.P.H.E. tablet/demo subsystem
- `vault.js` — V.A.U.L.T.-related behavior/support script
- `vault.css` — V.A.U.L.T.-related styling/support CSS

## Folder roles
- `assets/` — images, video, and supporting media
- `modules/` — panel/module content used by the main demo shell
- `catastrophe/` — dedicated emergency-mode subsystem files

## Helper / patch / deployment files
- `_headers` — Netlify header rules
- `_hostroute.js.html` — host/path routing helper
- `_center_block.html` — helper block / patch fragment
- `_insert_block.txt` — helper patch content
- `_flip_css.txt` — CSS patch helper
- `_flip_js.txt` — JS patch helper
- `_replace.pl` — replacement helper script
- `buildstamp.txt` — build marker / stamp

## Current branch model
- `main` = frozen live prototype baseline
- `demo-working` = safe working branch for controlled edits
