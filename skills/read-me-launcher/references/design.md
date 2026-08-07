# README design

Goal: the first screen should feel like a product with a competent owner, not a
scaffold dump.

## First screen (above the fold)

Include only:

1. **Name** - short, confident H1
2. **One-line pitch** - what it does + for whom (one sentence)
3. **Optional visual** - screenshot, demo GIF, or simple logo (real assets only)
4. **Primary proof** - 1-3 badges max (build, license, release) or a single status line
5. **Quick start link** or the first 3 commands if the project is tiny

Do not put a long feature laundry list above the fold.

## Visual rhythm

- Short paragraphs (1-3 sentences).
- Prefer tight command blocks over prose walls.
- Use a table only when it beats a list (ports, scripts, env vars).
- Consistent heading depth: H1 once, then H2 sections, H3 sparingly.
- Blank line before/after fences; language tags on every fence.

## Hero pattern (optional)

```markdown
<div align="center">

# Project Name

One crisp sentence about what this does.

[![CI](badge)](url) [![License](badge)](url)

</div>
```

Skip the hero if the project is an internal tool with no visual identity - a
clean H1 + pitch is enough.

## Section order (default)

1. Pitch / Overview
2. Features (3-6 bullets, outcomes not buzzwords)
3. Quick start
4. Configuration (env names only, never values)
5. Usage / examples
6. Architecture (short; link deeper docs)
7. Development
8. Contributing / License (as relevant)

Trim sections that do not apply. Empty "Roadmap" and "Acknowledgments" sections
are worse than omitting them.

## Tone

- Confident and specific: "Fast JSON API for inventory sync" beats "powerful
  scalable solution".
- Friendly without being cute. Avoid emoji spam; one tasteful emoji in the title
  is optional, not required.
- Show taste in naming and command examples (realistic paths, not `foo`/`bar`
  unless the repo uses those).

## Anti-patterns

- Badge walls (more than ~4)
- "Table of contents" for a 40-line README
- Fake screenshots or placeholder image URLs
- Copy-pasted npm init boilerplate that does not match the repo
- Giant ASCII art logos that break mobile
- Listing every script in `package.json` without saying when to use each
