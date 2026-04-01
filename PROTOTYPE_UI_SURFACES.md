# A.I.R.O.N. Prototype UI Surfaces

## Main shell
- `index.html` — main A.I.R.O.N. operator-panel shell

## Top row panel sources
- `modules/top-left.html` — Ghost Events
- `modules/top-center.html` — central operator hub / selector board
- `modules/top-right.html` — KPI Trends

## Bottom row panel sources
- `modules/bottom-left.html` — I/O Watch
- `modules/bottom-center.html` — trend / scope / core process panel
- `modules/bottom-right.html` — Fortune Teller

## Subsystem
- `catastrophe/index.html` — C.A.T.A.S.T.R.O.P.H.E. demo subsystem

## Shared support
- `vault.js`
- `vault.css`

## Working rule
Before changing behavior, identify whether the change belongs to:
- the main shell (`index.html`)
- a module file in `modules/`
- the catastrophe subsystem
- shared support files
