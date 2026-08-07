# Visual craft + GitHub image reality

Visuals are for **consumers**: proof that the project works. Flash is welcome
when it sells the outcome. Skip flash when a code sample proves more.

Also read [audience.md](audience.md) before choosing how loud to go.

## GitHub camo rules (hard)

| Do | Do not |
|----|--------|
| Prefer **PNG** for README `<img>` heroes | Rely on CSS-class SVGs as the only image |
| SVG only with **inline** `fill`/`stroke`/`font-*` | Depend on `<style>`, `class=`, `@keyframes` |
| Verify assets render (no broken-image icon) | Leave placeholders / empty src |
| Keep GIFs under ~5MB if used | Stack typing APIs + snakes + badge carnivals |

GitHub’s proxy often strips SVG `<style>` → blank images. **PNG is the default
hero format** for Launch/Proof modes.

## Intensity by mode

### Launch / Proof (shareable products, skills, CLIs, apps)

Ship all three when possible:

1. `banner.png` — brand + ruthless pitch (flashy, still readable)
2. `preview.png` — the **outcome** (README window, UI, CLI result)
3. `showcase.png` — before→after or “watch the value” strip

This is the floor for repos people will tweet. Decoration without outcome
preview = fail.

Reference quality (this skill):

- [assets/banner.png](../assets/banner.png)
- [assets/preview.png](../assets/preview.png)
- [assets/showcase.png](../assets/showcase.png)

### Library

- Optional small logo
- Hero is a **working code fence** (outside HTML divs), not a marketing mural
- Add a diagram only if it clarifies an architecture people ask about

### Infra / Internal / Docs-only

- Prefer clarity over flash
- Diagrams only when they reduce confusion
- Never invent product art for a private runbook

## Render-safe structure

```markdown
<div align="center">

  <img src="assets/banner.png" alt="Project banner" width="100%" />

  <p><strong>One sentence: outcome + audience.</strong></p>

</div>

```bash
gh skill install your-org/your-thing
```

<div align="center">

  <img src="assets/preview.png" alt="What you get" width="94%" />

</div>
```

Never put ` ``` ` fences inside `<div>` / `<section>` / `<center>`.

## Motion

- Prefer a strong static PNG over flaky external typing SVGs
- Optional: one short demo GIF of the real product (<5MB)
- Local camo-safe SVG motion is optional; never the only hero

## Creating assets

1. Create `assets/`
2. Generate PNG banner/preview/showcase that prove the product
3. Optional inline-attribute SVG twins
4. One accent family; no purple-glow cliché unless brand
5. No secrets, private dashboards, or fake UIs you did not see
6. Skip dull 01/02/03 tile grids unless the art is actually strong

## Anti-patterns

- Broken-image icons on GitHub
- Vibes-only banners with no product proof
- Nested fences in HTML
- External typing host as the sole wow
- Badge walls / emoji spam
- Em dashes
