#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — Pipethru command structure
# Declarative, low-syntax-error automation pipeline runner
# Numeral 137451921129154222
set -euo pipefail

PIPELINE="${1:-}"
if [[ -z "$PIPELINE" || ! -f "$PIPELINE" ]]; then
  echo "Usage: pipethru.sh <pipeline.yaml-or-list>"
  exit 1
fi

LEDGER="${HOME}/strange-loop-a15-controller/continuity_ledger.jsonl"
NUMERAL="137451921129154222"
mkdir -p "$(dirname "$LEDGER")"

log() {
  echo "{\"ts\":\"$(date -u +%Y-%m-%dT%H:%M:%SZ)\",\"agent\":\"pipethru\",\"numeral\":\"$NUMERAL\",\"msg\":$(echo "$1" | jq -R -s .)}" >> "$LEDGER"
}

echo "[HI] Pipethru starting: $PIPELINE"

# Extremely simple line-based pipeline format (one command per line, # comments allowed)
# This deliberately avoids complex YAML parsing to reduce near-error / parse instances
while IFS= read -r line || [[ -n "$line" ]]; do
  # Skip comments and blank lines
  [[ -z "$line" || "$line" =~ ^[[:space:]]*# ]] && continue

  # Strip leading/trailing whitespace
  cmd=$(echo "$line" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
  [[ -z "$cmd" ]] && continue

  echo "--- pipethru step: $cmd"
  if bash -c "$cmd"; then
    echo "[HI] OK: $cmd"
    log "ok $cmd"
  else
    echo "[HI] FAIL: $cmd"
    log "fail $cmd"
    # Continue to next step instead of hard abort (configurable later)
  fi
done < "$PIPELINE"

echo "[HI] Pipethru complete."
