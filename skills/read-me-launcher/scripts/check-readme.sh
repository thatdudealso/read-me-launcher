#!/usr/bin/env bash
# Fail on common GitHub README render footguns.
# Usage: check-readme.sh [README.md]
set -euo pipefail

README="${1:-README.md}"
ROOT="$(cd "$(dirname "$README")" && pwd -P)"
FILE="$ROOT/$(basename "$README")"
[[ -f "$FILE" ]] || { echo "missing: $FILE" >&2; exit 2; }

errors=0
warn() { echo "WARN: $*" >&2; }
fail() { echo "ERROR: $*" >&2; errors=$((errors + 1)); }

python3 - "$FILE" <<'PY' || true
import pathlib, re, sys
text = pathlib.Path(sys.argv[1]).read_text()
errs = []

# Nested markdown fences inside HTML div/section/center blocks break GFM hard.
for tag in ("div", "section", "center"):
    for m in re.finditer(rf"<{tag}\b[\s\S]*?</{tag}>", text, flags=re.I):
        block = m.group(0)
        if "```" in block:
            errs.append(f"nested code fence inside <{tag}> (breaks GitHub render) at char {m.start()}")

# Empty/placeholder images
for m in re.finditer(r'!\[[^\]]*\]\(([^)]+)\)|<img[^>]+src=["\']([^"\']+)["\']', text, flags=re.I):
    src = m.group(1) or m.group(2)
    if not src or src.lower() in {"todo.png", "todo.jpg", "image.png", "#"}:
        errs.append(f"placeholder image src: {src!r}")
    if " " in src.strip() and not src.startswith("data:"):
        errs.append(f"image src contains spaces (often breaks): {src!r}")

# Div without blank line after open / before close (GFM HTML/Markdown interop)
for m in re.finditer(r"<div\b[^>]*>\n(?!\n)", text):
    errs.append(f"<div> should be followed by a blank line before Markdown (char {m.start()})")

if "em dash" in text or "\u2014" in text:
    errs.append("contains em dash (skill forbids)")

# Prefer PNG heroes in README img tags; flag SVG-only hero patterns that often break
imgs = re.findall(r'<img[^>]+src=["\']([^"\']+)["\']', text, flags=re.I)
svg_imgs = [u for u in imgs if u.lower().endswith('.svg') and not u.startswith('http')]
png_imgs = [u for u in imgs if u.lower().endswith(('.png', '.jpg', '.jpeg', '.webp'))]
if svg_imgs and not png_imgs:
    errs.append("README uses local SVG images but no PNG; GitHub camo often blanks CSS-based SVGs — ship PNG heroes")

for e in errs:
    print(e)
sys.exit(1 if errs else 0)
PY
py_status=$?
if [[ $py_status -ne 0 ]]; then
  errors=$((errors + 1))
fi

# Check local relative image paths exist
while IFS= read -r src; do
  [[ -z "$src" ]] && continue
  [[ "$src" == http://* || "$src" == https://* || "$src" == data:* ]] && continue
  # strip anchors
  clean="${src%%#*}"
  if [[ ! -f "$ROOT/$clean" ]]; then
    fail "local image missing: $clean"
  fi
done < <(python3 - "$FILE" <<'PY'
import pathlib, re, sys
text = pathlib.Path(sys.argv[1]).read_text()
for m in re.finditer(r'!\[[^\]]*\]\(([^)]+)\)|<img[^>]+src=["\']([^"\']+)["\']', text, flags=re.I):
    print(m.group(1) or m.group(2))
PY
)

# Optional: HEAD-check a few external images (best-effort)
if command -v curl >/dev/null 2>&1; then
  while IFS= read -r url; do
    [[ "$url" == https://* || "$url" == http://* ]] || continue
    code=$(curl -sI -o /dev/null -w '%{http_code}' --max-time 8 "$url" || echo 000)
    if [[ "$code" != 200 && "$code" != 301 && "$code" != 302 ]]; then
      fail "external image HTTP $code: $url"
    fi
  done < <(python3 - "$FILE" <<'PY'
import pathlib, re, sys
text = pathlib.Path(sys.argv[1]).read_text()
for m in re.finditer(r'!\[[^\]]*\]\((https?://[^)]+)\)|<img[^>]+src=["\'](https?://[^"\']+)["\']', text, flags=re.I):
    print(m.group(1) or m.group(2))
PY
)
fi

if [[ $errors -gt 0 ]]; then
  echo "check-readme: FAILED ($errors)" >&2
  exit 1
fi
echo "check-readme: OK"
