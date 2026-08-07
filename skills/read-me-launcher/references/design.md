# README design (high bar)

Goal: the first screen should feel like a **product launch**, not a scaffold
dump. Developers should want to install the thing after one scroll of the thumb.

Also read [visuals.md](visuals.md) before drafting any public README.

## First screen (above the fold)

Include only:

1. **Hero graphic** - banner SVG/PNG or preview card (required for public product
   READMEs unless the user forbids assets)
2. **Name** - short, confident
3. **One-line pitch** - outcome + audience (bold is fine)
4. **Primary proof** - 1-3 badges max (release, license, one identity)
5. **Install** - the real one-liner, immediately usable

Do not put feature laundry lists, long histories, or contribution essays above
the fold.

## Taste test

Remove the project name from the hero. If the page could still be any random
starter template, it fails. Rewrite until the visual + pitch are specific.

## Visual rhythm

- Short paragraphs (1-3 sentences).
- Prefer tight command blocks over prose walls.
- Use a comparison table only when it beats a list (before/after, ports, env).
- H1 once; H2 for sections; H3 sparingly.
- Blank line before/after fences; language tags on every fence.
- Blank lines inside `<div align="center">` so GitHub still renders Markdown.

## Tone

- Confident and specific: "Inspects the repo, then writes a secret-safe landing
  page" beats "powerful README solution".
- Friendly without being cute. Zero emoji spam.
- Show taste in examples (realistic commands, not `foo`/`bar` unless the repo
  uses those).

## Section order (default public product)

1. Hero + pitch + install
2. Why it exists (pain in one breath)
3. What you get (3-6 outcome bullets or a sharp comparison)
4. Quick start (prereqs only if real)
5. Usage / example ask
6. Layout / architecture (short)
7. Related tools
8. License

Trim ruthlessly. Empty Roadmap / Acknowledgments sections are worse than none.

## Anti-patterns

- Text-only public product README when a banner is easy to add
- Badge walls (more than ~3 above the fold)
- TOC for a short README
- Fake screenshots or placeholder image URLs
- Copy-pasted npm init boilerplate that does not match the repo
- Giant ASCII art that breaks mobile
- Listing every script without saying when to use each
- Purple neon / glow cliché skins with no brand reason
