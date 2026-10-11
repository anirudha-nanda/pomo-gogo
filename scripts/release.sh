#!/usr/bin/env bash
# PROD: fast-forward main to the dev branch and push → https://anirudha-nanda.github.io/pomo-gogo/
set -euo pipefail
cd "$(dirname "$0")/.."
SRC="${1:-dev}"

if [ -n "$(git status --porcelain)" ]; then
  echo "Commit or stash your changes first." >&2; exit 1
fi
git fetch origin main "$SRC"
echo "Releasing to prod:"
git log --oneline "origin/main..origin/$SRC"
read -r -p "Ship these commits to prod? [y/N] " ok
[ "$ok" = "y" ] || { echo "Aborted."; exit 1; }
git push origin "origin/$SRC:refs/heads/main"
echo "Released → https://anirudha-nanda.github.io/pomo-gogo/ (live in ~1 min)"
