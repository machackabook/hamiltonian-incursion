#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — Unexpected extension / package / plugin scan
# Numeral 137451921129154222
set -euo pipefail
echo "[HI] extension-package-scan started $(date -u +%Y-%m-%dT%H:%M:%SZ)"

REPORT="/tmp/hi-ext-report.txt"
: > "$REPORT"

# List recently installed packages (last 7 days heuristic via package list)
pkg list-installed 2>/dev/null | head -50 >> "$REPORT" || true

# Look for unexpected Python / Node packages in user space
find "$HOME" -path "*/node_modules/*" -name "package.json" 2>/dev/null | head -10 >> "$REPORT" || true
find "$HOME" -path "*/site-packages/*" -type d 2>/dev/null | head -10 >> "$REPORT" || true

# Termux widget / shortcut / tasker-like plugins
find "$HOME/.termux" -type f \( -name "*.sh" -o -name "*.py" \) 2>/dev/null | head -20 >> "$REPORT" || true

echo "[HI] Extension / package inventory written (review only — no auto-removal)"
exit 0
