#!/usr/bin/env bash
# Local CI: builds Electron DMGs after every commit.
# Runs in background (non-blocking). Logs to /tmp/perfstab-build.log

set -euo pipefail

REPO="$(cd "$(dirname "$0")/.." && pwd)"
LOG="/tmp/perfstab-build.log"
ELECTRON_DIR="$REPO/electron"

echo "" >> "$LOG"
echo "=== Build triggered $(date '+%Y-%m-%d %H:%M:%S') ===" >> "$LOG"

cd "$ELECTRON_DIR"

echo "→ npm install..." >> "$LOG"
npm install --silent >> "$LOG" 2>&1

echo "→ npm run build..." >> "$LOG"
npm run build >> "$LOG" 2>&1

echo "✓ Build complete. DMGs in $REPO/dist/" >> "$LOG"
ls "$REPO/dist/"*.dmg >> "$LOG" 2>&1 || true
