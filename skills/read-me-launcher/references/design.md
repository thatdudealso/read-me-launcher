# README design

Goal: a stranger decides to try the project in five seconds. Also read
[audience.md](audience.md) and [visuals.md](visuals.md).

## First screen (Launch / Proof)

1. PNG hero (product signal, not empty vibes)
2. One-line pitch (outcome + audience)
3. 1-3 badges
4. Install one-liner **outside** the centered div
5. Outcome preview / showcase directly below

## First screen (Library)

1. Name + pitch
2. Install
3. Working code sample (the proof)

## Taste tests

- **Strip the name** — still specific? Good.
- **Twitter crop** — first screen readable in a screenshot? Good for Launch.
- **Would a skeptical eng install?** — if the art feels like perfume with no
  product, replace with outcome proof.

## Anti-patterns

- Nested ` ``` ` in `<div>` (hard fail)
- CSS-class SVG as only hero (often blank on GitHub)
- Vibes banner with no preview of output
- Badge walls, emoji spam, em dashes
