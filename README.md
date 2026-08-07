<div align="center">

# read-me-launcher

Launch beautiful, developer-grade GitHub READMEs that people can reuse on any repository.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

</div>

Agent skill for [Agent Skills](https://agentskills.io) / `gh skill`. Layout follows the standard `skills/<name>/SKILL.md` convention used by [anthropics/skills](https://github.com/anthropics/skills) and GitHub CLI discovery.

## Install

```bash
gh skill install thatdudealso/read-me-launcher
```

Pin a release:

```bash
gh skill install thatdudealso/read-me-launcher read-me-launcher --pin v1.0.0
```

Manual symlink:

```bash
git clone https://github.com/thatdudealso/read-me-launcher.git
ln -sfn "$(pwd)/read-me-launcher/skills/read-me-launcher" ~/.cursor/skills/read-me-launcher
```

## What it does

Inspects the real repo, picks public vs private voice, and writes a polished README with an honest quick start and no credential leaks.

## Layout

```
skills/read-me-launcher/
  SKILL.md
  scripts/inspect-repo.sh
  references/
  agents/openai.yaml
```

## Pair with consistent-naming

Name the repo with [`consistent-naming`](https://github.com/thatdudealso/consistent-naming), then launch the README with this skill.

## License

MIT
