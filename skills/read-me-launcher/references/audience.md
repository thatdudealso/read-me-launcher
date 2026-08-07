# Audience modes (consumer first)

The reader is a busy developer deciding in ~5 seconds: what is this, does it
work, can I try it. Visuals exist to **prove value**, not to decorate.

Top public repos routinely put a screenshot/GIF/demo above the fold. Developers
do not reject pictures. They reject **useless** pictures (stock banners, emoji
walls, neon with no product proof).

## Pick a mode before drafting

| Mode | When | Visual intensity | First screen must include |
|------|------|------------------|---------------------------|
| **Launch** | Public product, CLI, agent skill, app, anything meant to be shared (Twitter, Show HN, Discord) | High | PNG hero + outcome preview/showcase + pitch + one install |
| **Proof** | UI app, dashboard, design tool, anything visual | High | Real UI screenshot or honest product mock of *this* tool |
| **Library** | npm/crates/pip package, SDK, API client | Medium-low | Pitch + **copy-paste code example** as the hero “visual”; optional small logo |
| **Infra / backend** | Services, workers, infra modules | Low-medium | Pitch + architecture diagram *only if it clarifies*; strong run commands |
| **Internal** | Private teammate tools | Low | Purpose + runbook; skip marketing banners unless they help onboarding |
| **Docs-only** | Specs, notes, research | Minimal | Clear title + how to read/use; no flash |

Default when unsure and the repo is **public + installable**: **Launch**.
Default when the repo is a **library with no UI**: **Library**.

## Proof, not perfume

Every image must answer one of:

1. What does success look like?
2. What does the tool produce?
3. What changed (before → after)?

If an image is only “brand vibes” with no product signal, cut it or replace it
with a preview of the actual output (this skill’s own README preview/showcase
pattern).

## Share-ready (Twitter / social)

For Launch mode meant to be posted:

- First screen must screenshot well (hero + one line pitch readable at a glance)
- One install command visible without scrolling on desktop
- No broken images (PNG heroes; see [visuals.md](visuals.md))
- No nested fences in HTML (render-safe)
- Avoid badge walls and emoji carnivals; they read as amateur on social

## Anti-sentiment to avoid

Do **not** optimize for the imaginary critic who says “who puts pictures in a
README?” That critic is wrong for products and tools. Optimize for:

- “I get it in five seconds”
- “I can install this now”
- “This looks maintained”

Do optimize against: decorative fluff, fake screenshots of unrelated UIs, and
broken camo images.
