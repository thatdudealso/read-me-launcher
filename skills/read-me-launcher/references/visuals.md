# Visual craft (extreme bar) + render safety

Great READMEs are product pages. This skill aims for **museum-quality front
doors**, not "nicer markdown."

Also: GitHub Markdown is fragile. Creative does not mean broken. Every visual
trick must survive GitHub’s renderer.

## Extreme quality bar

Public product / tool / skill READMEs must clear all of these:

1. **Hero that stops the scroll** - custom in-repo SVG banner (not a stock badge)
2. **Outcome preview** - window/terminal/card graphic of what the tool produces
3. **Capability strip** - 3 visual beats (SVG cards or equally sharp layout)
4. **Ruthless pitch** - one sentence; outcome + audience
5. **Install under 10 seconds of reading** - outside any HTML wrapper if fenced
6. **Local motion only by default** - CSS/SMIL inside committed SVGs
7. **Taste test** - remove the name; if it looks like any starter, rewrite
8. **Render lint clean** - `scripts/check-readme.sh` must pass

Private repos may skip heavy graphics; polish and accuracy still required.

## Render rules (hard fails)

These cause “can’t render”, weird link glitches, or broken first screens:

| Rule | Why |
|------|-----|
| **Never put ` ``` ` fences inside `<div>` / `<section>` / `<center>`** | Breaks GFM; raw fences / half-rendered pages |
| Blank line after `<div ...>` and before `</div>` | Markdown inside HTML needs breathing room |
| Prefer **local** `assets/*.svg` over external animated hosts | External hosts 403/flake; camo breaks trust |
| No placeholder images (`todo.png`, empty src) | Instant amateur signal |
| No spaces in image URLs/paths | Broken images |
| Max **one** motion element in the hero | Carnival = less luxury |
| Max **3** badges above the fold | Badge walls kill taste |
| Validate with `scripts/check-readme.sh` before finishing | Catches the footguns above |

### Install command placement

Put fenced install blocks **outside** centered HTML:

```markdown
<div align="center">

  <img src="assets/banner.svg" alt="banner" width="100%" />

  <p><strong>Pitch goes here.</strong></p>

</div>

```bash
gh skill install your-org/your-skill
```
```

## Preferred visual stack

1. **Local theme-aware SVG** in `assets/` or `.github/assets/` (best)
2. **Local animated SVG** (CSS `@keyframes` or simple SMIL) for taglines
3. Shields badges (max 3)
4. External typing/banner APIs only if the user insists **and** HEAD returns 200

Reference quality in this skill:

- `assets/banner.svg`
- `assets/tagline.svg`
- `assets/preview.svg`
- `assets/features.svg`

## Creating assets when missing

1. Create `assets/` at repo root (or keep under the skill path if this is a skill repo).
2. Ship theme-aware SVG (`prefers-color-scheme` styles inside the file).
3. One accent color family; ink background; no purple glow cliché unless brand.
4. Never invent private UI screenshots or real secrets in preview cards.
5. Prefer SVG over JPEG/PNG for heroes. If you generate a raster, also ship SVG.

## Anti-patterns

- Text-only public product README
- Nested fences in HTML wrappers
- Flaky third-party animated images as the only hero
- Placeholder screenshots
- Giant ASCII logos
- Em dashes
- "Powerful / seamless / next-gen" with no install path
