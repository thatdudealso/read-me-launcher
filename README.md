<div align="center">

  <img src="skills/read-me-launcher/assets/banner.png" alt="read-me-launcher" width="100%" />

  <p><strong>An Agent Skill that launches museum-quality GitHub READMEs.</strong><br />
  Flashy heroes that actually render. Truthful installs. Credential deny-list.</p>

  <p>
    <a href="https://github.com/thatdudealso/read-me-launcher/releases"><img src="https://img.shields.io/github/v/release/thatdudealso/read-me-launcher?style=flat-square&color=0f766e" alt="Release" /></a>
    <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-0f172a?style=flat-square" alt="MIT" /></a>
    <a href="https://agentskills.io"><img src="https://img.shields.io/badge/Agent%20Skills-ready-111111?style=flat-square" alt="Agent Skills" /></a>
  </p>

</div>

```bash
gh skill install thatdudealso/read-me-launcher
```

<div align="center">

  <img src="skills/read-me-launcher/assets/preview.png" alt="Product preview" width="94%" />

</div>

<div align="center">

  <img src="skills/read-me-launcher/assets/showcase.png" alt="Before and after README craft" width="94%" />

</div>

## Why this exists

Most README “upgrades” still fail in two ugly ways:

1. They look like every other AI scaffold
2. Their “fancy SVG” dies on GitHub’s image proxy (broken image icon)

**read-me-launcher** is built for both problems: extreme craft, and formats GitHub will actually show.

| Without it | With it |
|---|---|
| Blank / broken SVG heroes | PNG heroes that render in camo |
| Nested fences that nuke the page | Lint that blocks those footguns |
| Dull feature tile grids | Cinematic before → after showcase |
| Secrets and fake claims | Inspect-first + deny-list |

## Quick start

```bash
gh skill install thatdudealso/read-me-launcher
```

Pin:

```bash
gh skill install thatdudealso/read-me-launcher read-me-launcher --pin v1.3.0
```

Ask your agent:

```text
/read-me-launcher

Make this README feel like a product launch. Use PNG heroes that render on
GitHub. Keep code fences outside HTML divs. Run check-readme.sh. No secrets.
```

### Manual install

```bash
git clone https://github.com/thatdudealso/read-me-launcher.git
ln -sfn "$(pwd)/read-me-launcher/skills/read-me-launcher" ~/.cursor/skills/read-me-launcher
```

## What the skill enforces

1. Inspect the real repo
2. Ship flashy **PNG** banner/preview (SVG only as camo-safe inline fallback)
3. Write render-safe Markdown
4. Lint with `scripts/check-readme.sh`
5. Scrub credentials

This page is the skill applied to itself.

## Layout

```text
skills/read-me-launcher/
├── SKILL.md
├── assets/
│   ├── banner.png
│   ├── preview.png
│   ├── showcase.png
│   ├── banner.svg          # inline-attribute fallback
│   └── preview.svg
├── scripts/
│   ├── inspect-repo.sh
│   └── check-readme.sh
└── references/
    ├── visuals.md
    ├── design.md
    ├── privacy.md
    └── section-map.md
```

## Pair with consistent-naming

```bash
gh skill install thatdudealso/consistent-naming
gh skill install thatdudealso/read-me-launcher
```

## License

[MIT](LICENSE)
