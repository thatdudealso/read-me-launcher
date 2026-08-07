<div align="center">

# read-me-launcher

**Turn any repo into a README people actually want to open.**

An Agent Skill that inspects the real project, picks the right voice for public vs private, and writes a landing page with taste: clear pitch, honest quick start, zero credential leaks.

[![Release](https://img.shields.io/github/v/release/thatdudealso/read-me-launcher?style=flat-square)](https://github.com/thatdudealso/read-me-launcher/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](LICENSE)
[![Agent Skills](https://img.shields.io/badge/Agent%20Skills-compatible-111111?style=flat-square)](https://agentskills.io)

```bash
gh skill install thatdudealso/read-me-launcher
```

</div>

<br />

Most READMEs fail in the first screen. Scaffold dumps. Badge walls. Feature laundry lists. Fake claims. Secrets that should never have shipped.

**read-me-launcher** is the skill you hand an agent when you want the opposite: a README that feels owned by a careful engineer.

## Why developers use it

| Without it | With it |
|------------|---------|
| Generic "Getting Started" boilerplate | Install/run commands taken from *this* repo |
| Same tone for every project | Public pitch vs private runbook |
| Secrets and hostnames slip in | Hard deny-list before the draft ships |
| Sections for the sake of sections | Only what the project type needs |

Works anywhere Agent Skills load: Cursor, Claude Code, Codex, and other clients that read `SKILL.md`.

## Quick start

**Requires:** [GitHub CLI](https://cli.github.com/) with skill support (`gh skill`).

```bash
gh skill install thatdudealso/read-me-launcher
```

Pin a release if you want a fixed version:

```bash
gh skill install thatdudealso/read-me-launcher read-me-launcher --pin v1.0.0
```

Then in your agent chat, on the repo you want documented:

```text
/read-me-launcher
```

or ask plainly: *write a polished README for this repository*.

### Manual install

```bash
git clone https://github.com/thatdudealso/read-me-launcher.git
ln -sfn "$(pwd)/read-me-launcher/skills/read-me-launcher" ~/.cursor/skills/read-me-launcher
# also: ~/.claude/skills  ~/.codex/skills  ~/.agents/skills
```

## What the skill does

1. **Inspects** the repo with `scripts/inspect-repo.sh` (stack signals, scripts, visibility). Never invents stack facts.
2. **Chooses voice** from public vs private (outsider story vs teammate runbook).
3. **Designs the first screen** before dumping headings: name, one pitch, light proof, path to run.
4. **Writes `README.md`** with real install/run commands from the tree.
5. **Runs a secret pass** against a deny-list so keys, tokens, and credential-looking strings stay out.

## Example ask

```text
Use read-me-launcher on this repo. Make the first screen feel like a product
landing page, keep install commands accurate, and do not invent features.
```

This repository’s README is the skill applied to itself. If the page feels intentional, that is the bar it aims for on yours.

## Layout

Standard [Agent Skills](https://agentskills.io) / [`gh skill`](https://cli.github.com/manual/gh_skill_publish) layout (same pattern as [anthropics/skills](https://github.com/anthropics/skills)):

```text
skills/read-me-launcher/
├── SKILL.md                 # triggers + workflow
├── scripts/inspect-repo.sh  # facts only; never dumps secrets
├── references/
│   ├── design.md            # first screen, rhythm, anti-patterns
│   ├── privacy.md           # public/private + deny-list
│   └── section-map.md       # sections by project type
└── agents/openai.yaml       # Codex / OpenAI UI hints
```

## Pair with consistent naming

Name the repo and files with [`consistent-naming`](https://github.com/thatdudealso/consistent-naming), then launch the README with this skill so the landing page and the tree agree.

```bash
gh skill install thatdudealso/consistent-naming
gh skill install thatdudealso/read-me-launcher
```

## License

[MIT](LICENSE). Use it on your repos, ship better front doors.
