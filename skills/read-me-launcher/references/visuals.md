# Visual craft (extreme bar) + GitHub image reality

GitHub’s image proxy (camo) and blob preview are harsh:

- `<style>` + CSS classes inside SVG are often stripped → **blank/broken images**
- External animated hosts flake or 403
- Nested Markdown fences inside `<div>` break the whole README

So: be flashy, but ship formats GitHub will actually show.

## Hard image rules

| Do | Do not |
|----|--------|
| Prefer **PNG** heroes in the README (`assets/banner.png`) | Rely on CSS-class SVGs as the only README image |
| If shipping SVG, use **inline** `fill`/`stroke`/`font-*` attributes | Depend on `<style>`, `class=`, `@keyframes` for critical pixels |
| Keep SVG simple (gradients + shapes + text OK) | Expect `@media` theme CSS to save a class-based SVG |
| Verify raw URL returns `200` and image renders | Leave `todo.png` / empty src |
| Max one motion trick; prefer static flashy PNG | Stack typing APIs + snakes + stats |

**Default for public product READMEs:** PNG banner + PNG preview (+ optional PNG showcase). Keep camo-safe SVG as optional fallback, not the primary `<img>`.

## Extreme quality bar

1. Flashy PNG hero that stops the scroll
2. Outcome preview graphic (window / after-state)
3. One showcase graphic (before→after or launch strip) — not a boring 3-tile grid unless it’s genuinely hot
4. Ruthless pitch + install outside HTML wrappers
5. Max 3 badges
6. `scripts/check-readme.sh` passes
7. Taste test: remove the name; if generic, rewrite

## Render-safe README structure

```markdown
<div align="center">

  <img src="assets/banner.png" alt="Project banner" width="100%" />

  <p><strong>One sentence pitch.</strong></p>

</div>

```bash
gh skill install your-org/your-thing
```

<div align="center">

  <img src="assets/preview.png" alt="Preview" width="94%" />

</div>
```

Never put ` ``` ` fences inside the `<div>`.

## Creating assets

1. Create `assets/` (repo root or skill path).
2. Produce **PNG** banner/preview (generate or export). Wide, high contrast, one accent.
3. Optionally add camo-safe SVG twin with inline attributes only.
4. No purple-glow cliché unless brand. No secrets in graphics.
5. Skip dull “01 / 02 / 03 card grids” unless the visual is actually striking.

## Anti-patterns (instant fail)

- Class-based SVG as the only hero (breaks on GitHub)
- Nested fences in HTML
- Placeholder images
- External typing SVG as the sole wow
- Boring three-tile feature boards
- Em dashes
