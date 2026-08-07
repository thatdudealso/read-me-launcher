<div align="center">

  <img src="skills/read-me-launcher/assets/banner.png" alt="read-me-launcher" width="100%" />

  <p><strong>An Agent Skill that launches READMEs developers actually want to open.</strong><br />
  Consumer-first. Share-ready. PNG heroes that render on GitHub. Secret-safe.</p>

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

  <img src="skills/read-me-launcher/assets/preview.png" alt="What the skill produces" width="94%" />

</div>

<div align="center">

  <img src="skills/read-me-launcher/assets/showcase.png" alt="Before and after README craft" width="94%" />

</div>

## Built for the next developer (and your tweet)

A good README is not for you. It is for the stranger who lands cold, or the
timeline that sees one screenshot.

Top repos put **proof** above the fold: what it is, what success looks like, one
install command. Pictures are not the enemy. Useless pictures are.

**read-me-launcher** picks an audience mode, then ships the right intensity:

| Mode | Best for | Visuals |
|------|----------|---------|
| Launch | Products, skills, CLIs you will share | Flashy PNG banner + outcome preview + showcase |
| Proof | UI tools | Real product screenshots |
| Library | Packages / SDKs | Code sample as the hero (not a mural) |
| Internal | Private tools | Runbook clarity, minimal marketing |

## Why it works on GitHub

Fancy SVG + CSS classes often die in GitHub’s image proxy (broken image icon).
This skill defaults to **PNG heroes**, keeps install fences **outside** HTML
divs, and lints with `check-readme.sh` before you ship.

## Quick start

```bash
gh skill install thatdudealso/read-me-launcher
```

Pin:

```bash
gh skill install thatdudealso/read-me-launcher read-me-launcher --pin v1.4.0
```

Ask your agent:

```text
/read-me-launcher

Consumer-first README. If this is shareable, use Launch mode with PNG
banner + preview + showcase. Prove the product. Lint with check-readme.sh.
```

### Manual install

```bash
git clone https://github.com/thatdudealso/read-me-launcher.git
ln -sfn "$(pwd)/read-me-launcher/skills/read-me-launcher" ~/.cursor/skills/read-me-launcher
```

## What the skill enforces

1. Choose audience mode (`references/audience.md`)
2. Inspect the real repo
3. Ship proof visuals (or code-first for libraries)
4. Write render-safe Markdown
5. Lint + secret scrub

This page is Launch mode applied to itself: flashy on purpose, useful on purpose.

## Layout

```text
skills/read-me-launcher/
├── SKILL.md
├── assets/
│   ├── banner.png      # share-ready hero
│   ├── preview.png     # outcome proof
│   ├── showcase.png    # before → after
│   ├── banner.svg      # inline-attribute fallback
│   └── preview.svg
├── scripts/
│   ├── inspect-repo.sh
│   └── check-readme.sh
└── references/
    ├── audience.md     # launch vs library vs internal
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
