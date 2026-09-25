#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — Folder watcher / inotify / unexpected monitoring scan
# Numeral 137451921129154222
set -euo pipefail
echo "[HI] folder-watcher-scan started $(date -u +%Y-%m-%dT%H:%M:%SZ)"

REPORT="/tmp/hi-watcher-report.txt"
: > "$REPORT"

# Look for common watcher processes
ps -A 2>/dev/null | grep -iE 'inotify|fswatch|watchman|entr|watchexec' | grep -v grep >> "$REPORT" || true

# Termux-specific: unexpected job-scheduler or broadcast receivers that look like watchers
if command -v termux-job-scheduler >/dev/null 2>&1; then
  termux-job-scheduler -l 2>/dev/null | head -20 >> "$REPORT" || true
fi

# Cron entries that look like continuous directory polling
crontab -l 2>/dev/null | grep -iE 'find |inotify|watch|monitor' >> "$REPORT" || true

if [[ -s "$REPORT" ]]; then
  echo "[HI] Possible folder watchers / monitors detected"
  cat "$REPORT"
  exit 1
else
  echo "[HI] No unexpected folder watchers detected"
  exit 0
fi
