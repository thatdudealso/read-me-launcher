<div align="center">

  <img src="skills/read-me-launcher/assets/banner.svg" alt="read-me-launcher banner" width="100%" />

  <br />

  <img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=600&size=22&duration=3500&pause=900&color=2DD4BF&center=true&vCenter=true&width=720&height=40&lines=READMEs+that+feel+owned.;Not+scaffolds.+Not+secrets.+Not+slop." alt="Typing pitch" />

  <p><strong>An Agent Skill that launches READMEs people actually want to open.</strong><br />
  Inspects the real repo. Designs a hero. Writes the page. Blocks credential leaks.</p>

  <p>
    <a href="https://github.com/thatdudealso/read-me-launcher/releases"><img src="https://img.shields.io/github/v/release/thatdudealso/read-me-launcher?style=flat-square&color=0f766e" alt="Release" /></a>
    <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-0f172a?style=flat-square" alt="MIT" /></a>
    <a href="https://agentskills.io"><img src="https://img.shields.io/badge/Agent%20Skills-ready-111111?style=flat-square" alt="Agent Skills" /></a>
  </p>

  ```bash
  gh skill install thatdudealso/read-me-launcher
  ```

</div>

<br />

<div align="center">
  <img src="skills/read-me-launcher/assets/preview.svg" alt="README preview card" width="92%" />
</div>

## The problem

Most READMEs die in the first screen.

Scaffold dumps. Badge walls. Feature laundry lists. Invented stack claims. Secrets that should never have shipped. Pages that look like every other AI-generated starter.

Developers bounce. That is the whole ballgame.

## The fix

**read-me-launcher** hands your agent a high bar and the tools to hit it:

| It does | So you get |
|---------|------------|
| Inspects the tree first | Install/run commands that are real |
| Requires a hero for public products | A first screen with taste |
| Creates theme-aware SVG assets when missing | Graphics that work in light and dark |
| Switches public vs private voice | Outsider pitch or teammate runbook |
| Runs a credential deny-list | No keys, tokens, or `.env` paste disasters |

Works with Cursor, Claude Code, Codex, and anything else that loads [Agent Skills](https://agentskills.io).

## Quick start

```bash
gh skill install thatdudealso/read-me-launcher
```

Pin it:

```bash
gh skill install thatdudealso/read-me-launcher read-me-launcher --pin v1.1.0
```

Then ask your agent on any repo:

```text
/read-me-launcher

Make this README feel like a product launch. Create SVG hero assets if missing.
Keep secrets out. Do not invent features.
```

### Manual install

```bash
git clone https://github.com/thatdudealso/read-me-launcher.git
ln -sfn "$(pwd)/read-me-launcher/skills/read-me-launcher" ~/.cursor/skills/read-me-launcher
```

Same path works for `~/.claude/skills`, `~/.codex/skills`, and `~/.agents/skills`.

## What “good” looks like

This page is the skill applied to itself.

- Wide banner with brand and pitch
- One motion line (typing SVG), not a carnival
- Preview card that shows the outcome
- Install above the fold
- Comparison that makes the pain obvious
- No emoji spam, no fake dashboards, no secret leaks

Steal the pattern. That is the point.

## Inside the skill

```text
skills/read-me-launcher/
├── SKILL.md
├── assets/
│   ├── banner.svg      # theme-aware hero reference
│   └── preview.svg     # outcome window reference
├── scripts/
│   └── inspect-repo.sh
├── references/
│   ├── design.md       # structure + taste tests
│   ├── visuals.md      # banners, SVG, motion rules
│   ├── privacy.md      # public/private + deny-list
│   └── section-map.md
└── agents/openai.yaml
```

## Pair with consistent-naming

Name the repo like it belongs on your machine, then launch the front door:

```bash
gh skill install thatdudealso/consistent-naming
gh skill install thatdudealso/read-me-launcher
```

[`consistent-naming`](https://github.com/thatdudealso/consistent-naming) surveys local structure. This skill makes the landing page irresistible.

## License

[MIT](LICENSE). Make your repos look like someone cares.
