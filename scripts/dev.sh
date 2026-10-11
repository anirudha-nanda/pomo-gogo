#!/usr/bin/env bash
# DEV: serve the app locally at http://localhost:${PORT:-8000} (shows a purple DEV badge).
set -euo pipefail
cd "$(dirname "$0")/.."
PORT="${PORT:-8000}"
echo "Pomo Gogo dev server → http://localhost:$PORT  (Ctrl+C to stop)"
exec python3 -m http.server "$PORT" --bind 127.0.0.1
