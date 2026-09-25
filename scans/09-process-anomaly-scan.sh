#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — Process anomaly scan (defensive)
# Numeral 137451921129154222
set -euo pipefail
echo "[HI] process-anomaly-scan started $(date -u +%Y-%m-%dT%H:%M:%SZ)"

REPORT="/tmp/hi-proc-report.txt"
: > "$REPORT"

# High CPU or long-running unexpected processes
ps -A -o pid,pcpu,pmem,etime,comm 2>/dev/null | sort -k2 -nr | head -15 >> "$REPORT" || true

# Processes listening on ports (should be none under pure defensive posture)
if command -v netstat >/dev/null 2>&1; then
  netstat -tuln 2>/dev/null | grep LISTEN >> "$REPORT" || true
elif command -v ss >/dev/null 2>&1; then
  ss -tuln 2>/dev/null | grep LISTEN >> "$REPORT" || true
fi

echo "[HI] Process snapshot complete"
cat "$REPORT"
exit 0
