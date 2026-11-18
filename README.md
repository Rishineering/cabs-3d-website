# Gunjan Cab India — three design directions

Self-contained HTML mockups. No build step, no dependencies, no photography.
All three present the same real business; only the art direction changes.

## Open them

Double-click `index.html` — it links to the three directions. No server needed.

(If you ever want one, run this in the folder: `python -m http.server 4321 --bind 127.0.0.1`
then open <http://127.0.0.1:4321/index.html>. Remember to stop it afterwards.)

## What's in here

| File | Status | Description |
|---|---|---|
| `a-control-room.html` | **COMPLETED (Client-Ready)** | **Direction A: Control Room** — Fully built corporate website ready to ship directly to Gunjan Cab India. Complete with interactive SVG telemetry radar, live IST clock, 4-stage operational protocol, corridor status board, expandable service specifications, vector fleet blueprints, interactive rate estimator & dispatch console, WhatsApp lead integration, confirmation modals, enterprise compliance matrix, FAQ accordion, and mobile command drawer. |
| `index.html` | Review Hub | Comparison pitch hub linking to the design directions. |
| `b-night-corridor.html` | Direction B | Night Corridor visual concept mockup. |
| `c-editorial.html` | Direction C | Editorial visual concept mockup. |

## Verified

- Loads with **zero console errors** on all four pages
- **No horizontal overflow** at 1440px and 800px
- Fonts report `loaded`; falls back to Georgia/system if Google Fonts is blocked
- Respects `prefers-reduced-motion: reduce` — reveals resolve to their final state and the
  map/trails go static (this was a real bug in v1, fixed)

## Placeholders — confirm with the client before this goes anywhere public

- **Every number is illustrative**: fleet size, trips/month, on-time %, cities.
  Their live site still shows `00+` in the stats block.
- **No client logos** are used. The marquee cycles service copy instead, so nothing is faked.
- **No stock or AI imagery.** All visuals are code: SVG, canvas, CSS gradients, type.
- The "eleven vehicles / eight minutes" line in Direction C is a writing device, not their data.

## Why no photography

The client has no premium fleet photography, and motion over stock images reads as cheap.
These directions deliberately win on typography, choreography and data instead — which is
also what makes them hard for a competitor to copy.

If a shoot ever happens, Direction A and B both have obvious slots for it (hero plate, fleet
thumbnails) without a redesign.
