---
name: read-me-launcher
description: >-
  Launch museum-quality GitHub README.md pages with flashy PNG heroes and
  camo-safe visuals that actually render on GitHub, plus strict Markdown rules
  so pages do not break. Secret-safe and public/private aware. Use when writing
  or redesigning a README; when images fail to render; or when the user wants
  something beautiful, creative, or product-grade.
license: MIT
---

# Read Me Launcher

Ship a README that looks expensive and **loads on GitHub**. Broken image icons
are a hard failure.

## Extreme bar (public products)

- [ ] Flashy **PNG** hero (`assets/banner.png`) in the README
- [ ] PNG preview / showcase of the outcome
- [ ] Optional camo-safe SVG twins use **inline attributes only** (no CSS classes)
- [ ] One bold pitch + install outside centered divs
- [ ] Max 3 badges above the fold
- [ ] **No code fences inside `<div>` / `<section>` / `<center>`**
- [ ] `scripts/check-readme.sh README.md` passes
- [ ] Secret deny-list pass

If images show GitHub’s broken-image icon, fix assets before finishing.

## Why PNGs

GitHub camo often strips SVG `<style>` blocks. Class-based SVGs become blank.
Prefer PNG for README `<img>` tags. See [references/visuals.md](references/visuals.md).

## Workflow

1. Inspect with `scripts/inspect-repo.sh`.
2. Design visuals first (PNG heroes). Follow [references/visuals.md](references/visuals.md).
3. Draft render-safe README ([references/design.md](references/design.md)).
4. Lint: `scripts/check-readme.sh README.md`
5. Open the raw image URLs mentally: if it would 404 or be blank SVG, rewrite.

## Bundled resources

| Path | When |
|------|------|
| [scripts/inspect-repo.sh](scripts/inspect-repo.sh) | Start |
| [scripts/check-readme.sh](scripts/check-readme.sh) | Before finish |
| [references/visuals.md](references/visuals.md) | Image formats + flash |
| [references/design.md](references/design.md) | Structure |
| [references/privacy.md](references/privacy.md) | Secrets |
| [assets/banner.png](assets/banner.png) | Hero reference |
| [assets/preview.png](assets/preview.png) | Preview reference |
| [assets/showcase.png](assets/showcase.png) | Before/after flash |
