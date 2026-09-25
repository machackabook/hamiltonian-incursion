#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — Auto-assist orchestrator (defensive)
# Runs the full scan suite + strength check + optional profile load
# Numeral 137451921129154222
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SCANS="$ROOT/scans"
LEDGER="${HOME}/strange-loop-a15-controller/continuity_ledger.jsonl"
NUMERAL="137451921129154222"

echo "[HI] Auto-assist started $(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo "[HI] Numeral $NUMERAL"

mkdir -p "$(dirname "$LEDGER")"

# Run every scan in order
for scan in "$SCANS"/*.sh; do
  [[ -f "$scan" ]] || continue
  echo "--- Running $(basename "$scan") ---"
  if bash "$scan"; then
    echo "[HI] $(basename "$scan") OK"
  else
    echo "[HI] $(basename "$scan") raised attention — logged"
    echo "{\"ts\":\"$(date -u +%Y-%m-%dT%H:%M:%SZ)\",\"agent\":\"auto-assist\",\"numeral\":\"$NUMERAL\",\"msg\":\"scan-attention $(basename "$scan")\"}" >> "$LEDGER"
  fi
done

# Optional: load default Azazel profile if present
if [[ -f "$ROOT/profiles/default/env.sh" ]]; then
  # shellcheck source=/dev/null
  source "$ROOT/profiles/default/env.sh"
  echo "[HI] Default Azazel profile environment loaded"
fi

echo "[HI] Auto-assist complete. Review ledger and remedy cards if any attention was raised."
echo "[HI] Source of truth remains the GitHub repository."
