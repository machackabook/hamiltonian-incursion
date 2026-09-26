#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — storage permission + Continuity tree scan (defensive, non-root)
# Numeral 137451921129154222
set -euo pipefail
echo "[HI] storage-permission-scan started $(date -u +%Y-%m-%dT%H:%M:%SZ)"

STATUS=0

# Check termux-setup-storage state
if [[ -d "$HOME/storage/shared" ]]; then
  echo "[OK] ~/storage/shared present"
  ls -ld "$HOME/storage/shared" || true
else
  echo "[WARN] ~/storage/shared missing — run termux-setup-storage + grant All Files Access"
  STATUS=1
fi

# Continuity tree R/W test
CONT="$HOME/storage/shared/Continuity"
if [[ -d "$CONT" ]]; then
  TESTFILE="$CONT/.hi-write-test-$$"
  if echo "continuity-write-ok" > "$TESTFILE" 2>/dev/null; then
    echo "[OK] Continuity tree writable"
    rm -f "$TESTFILE"
  else
    echo "[WARN] Continuity tree not writable — check All Files Access"
    STATUS=1
  fi
else
  echo "[INFO] Continuity tree not yet created — run rite-of-passage-permissions.sh"
fi

# Sysinfo presence
if [[ -f "$HOME/.hi/sysinfo.json" ]]; then
  echo "[OK] sysinfo.json present"
  cat "$HOME/.hi/sysinfo.json"
else
  echo "[WARN] sysinfo.json missing"
  STATUS=1
fi

# termux-api surface
if command -v termux-battery-status >/dev/null 2>&1; then
  echo "[OK] termux-api package present"
else
  echo "[WARN] termux-api package missing — pkg install termux-api"
  STATUS=1
fi

echo "[HI] storage-permission-scan finished with status $STATUS"
exit $STATUS
