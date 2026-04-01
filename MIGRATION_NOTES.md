# A.I.R.O.N. Migration Notes

## Current model
- `main` protects the frozen live prototype
- `demo-working` is the safe working branch
- Netlify production deploys from `main`
- Netlify branch deploys from `demo-working`

## Intent
- Keep the current prototype as the live demo
- Use controlled branch work to prepare the future A.I.R.O.N. website
- Do not break the existing prototype while restructuring

## Immediate rule
All edits happen in `demo-working` unless explicitly promoting to `main`.
