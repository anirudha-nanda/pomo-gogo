#!/usr/bin/env bash
# SANDBOX: publish the current commit to https://anirudha-nanda.github.io/pomo-gogo-sandbox/
# Usage: scripts/deploy-sandbox.sh [ref]   (default: HEAD)
set -euo pipefail
cd "$(dirname "$0")/.."
REF="${1:-HEAD}"
REMOTE_URL="https://github.com/anirudha-nanda/pomo-gogo-sandbox.git"

if ! git remote get-url sandbox >/dev/null 2>&1; then
  git remote add sandbox "$REMOTE_URL"
fi
if [ -n "$(git status --porcelain)" ]; then
  echo "Warning: you have uncommitted changes; only committed work at $REF is deployed." >&2
fi

git push --force sandbox "$REF:refs/heads/main"
echo "Deployed $(git rev-parse --short "$REF") to sandbox → https://anirudha-nanda.github.io/pomo-gogo-sandbox/ (live in ~1 min)"
