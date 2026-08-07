# Visual craft for READMEs

GitHub Markdown is limited. Great READMEs still look intentional by using what
**does** work: centered HTML, local SVG/PNG assets, theme-aware graphics, a few
sharp badges, and tight motion via animated SVG services when they earn their
place.

## Non-negotiable bar

A README this skill ships must feel like a product page, not a scaffold:

1. **Hero that stops the scroll** - banner or preview graphic in the first screen
2. **One ruthless pitch** - what it is + who it is for
3. **Install in under 10 seconds of reading**
4. **Proof** - release/license badges or a real preview card (not a badge wall)
5. **Taste** - short paragraphs, real commands, no emoji spam, no fake screenshots

If the first screen could belong to any random npm starter after removing the
name, rewrite it.

## Preferred visual stack (in order)

### 1. Local assets in the repo (best)

Commit graphics under `assets/` or `.github/assets/`:

| Asset | Purpose |
|-------|---------|
| `banner.svg` | Wide hero (theme-aware if possible) |
| `preview.svg` / `demo.svg` | Product window / output preview |
| `logo.svg` | Small mark for badges/links |

Embed centered:

```markdown
<div align="center">

  <img src="assets/banner.svg" alt="Project banner" width="100%" />

</div>
```

### 2. Theme-aware SVGs

Put light/dark styles inside the SVG:

```svg
<style>
  .title { fill: #0f172a; }
  @media (prefers-color-scheme: dark) {
    .title { fill: #f8fafc; }
  }
</style>
```

Or use `<picture>` with separate light/dark files when two rasters exist.

### 3. Lightweight motion (optional, tasteful)

Use only when it reinforces the product (CLI, agent, typing brand line):

- Typing line: `https://readme-typing-svg.demolab.com?...`
- Keep **one** motion element max in the hero
- Prefer local SVG if an external service would be the only "wow"

Do not stack typing SVG + animated banner + snake + stats cards.

### 4. Badges

Max **3** above the fold (release, license, one identity badge). Prefer
`flat-square`. No rainbow for-the-badge walls.

## Hero recipes

### Recipe A — Banner + pitch (libraries, skills, CLIs)

```markdown
<div align="center">

  <img src="assets/banner.svg" alt="name" width="100%" />

  <p><strong>One sentence that sells the outcome.</strong></p>

  <p>
    <a href="..."><img src="https://img.shields.io/..." alt="Release" /></a>
    <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square" alt="MIT" /></a>
  </p>

  ```bash
  npm i your-thing
  ```

</div>
```

### Recipe B — Preview window (tools that produce an artifact)

Show a fake-but-honest UI/terminal of the **output** (README preview, CLI
session). This skill’s `assets/preview.svg` is the reference pattern.

### Recipe C — Before / after strip

Two short columns or a single comparison table that makes the pain obvious.
Keep it visual and under 6 rows.

## Graphics the agent should create when missing

When the repo has no hero assets and the README needs to impress:

1. Create `assets/` at the repo root (or `.github/assets/`).
2. Add a **theme-aware SVG banner** (name + pitch + accent). Prefer SVG over PNG.
3. Optionally add a **preview SVG** showing the product outcome.
4. Keep colors cohesive: one ink background, one accent, neutrals. Avoid purple
   glow clichés and warm-cream serif brochure looks unless the brand already
   uses them.
5. Never invent product screenshots of private dashboards or UIs you did not see.

If image generation tools are available and the user wants raster art, generate
a wide hero and also provide an SVG fallback for crisp GitHub rendering.

## Anti-patterns (instant fail)

- Text-only README for a public product skill/tool when a banner is feasible
- Centering broken because Markdown sits inside `<div>` without blank lines
- External image hosts with broken/expired URLs
- Placeholder `![screenshot](todo.png)`
- Giant ASCII logos that explode on mobile
- More than one competing animation
- "Powerful / seamless / next-gen" filler with no concrete install path

## Secret-safe visuals

Graphics must not contain:

- API keys, tokens, `.env` contents, private hostnames
- Real customer data, private dashboards, PII

Use clearly fake example commands in preview cards.
