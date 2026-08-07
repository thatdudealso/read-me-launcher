<div align="center">

# read-me-launcher

Launch beautiful, developer-grade GitHub READMEs that people can reuse on any repository.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

</div>

## Why

Most READMEs are either a scaffold dump or a marketing wall. This skill inspects the real repo, picks public vs private voice, and writes a first screen that looks owned: clear pitch, honest quick start, zero credential leaks.

## Features

- Public vs private tone (outsider story vs teammate runbook)
- Stack facts from the repo, not invented claims
- Design rules for above-the-fold layout and section order
- Hard deny-list for secrets, tokens, and unsafe hostnames
- Works as a drop-in agent skill across Cursor, Claude, Codex, and friends

## Install

```bash
git clone https://github.com/thatdudealso/read-me-launcher.git
ln -sfn "$(pwd)/read-me-launcher" ~/.cursor/skills/read-me-launcher
# also works for ~/.claude/skills, ~/.codex/skills, ~/.agents/skills, etc.
```

## Usage

From the repository you want to document:

```bash
./scripts/inspect-repo.sh .
```

Then follow `SKILL.md` to draft or rewrite `README.md`. Prefer writing the file over describing what you would write.

## Layout

```
SKILL.md                   # agent instructions + triggers
scripts/inspect-repo.sh    # stack, scripts, visibility (no secret dumps)
references/
  design.md                # hero, rhythm, anti-patterns
  privacy.md               # public/private + leak deny-list
  section-map.md           # sections by project type
agents/openai.yaml         # Codex/OpenAI skill UI hints
```

## Pair with consistent-naming

Name the repo and files with [`consistent-naming`](https://github.com/thatdudealso/consistent-naming), then launch the README with this skill so the landing page and the tree agree.

## License

MIT
