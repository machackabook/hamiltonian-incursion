#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — Device-aware prune
# Moves foreign device structures to MedicBay quarantine (report + move, no silent delete)
# Numeral 137451921129154222
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CLASS_FILE="${HOME}/.hi/device_class"
MEDIC="${HOME}/strange-loop-a15-controller/medicbay/foreign_$(date -u +%Y%m%d_%H%M%S)"
LEDGER="${HOME}/strange-loop-a15-controller/continuity_ledger.jsonl"
NUMERAL="137451921129154222"

if [[ ! -f "$CLASS_FILE" ]]; then
  echo "[HI] No device class stamp. Run device/detect.sh first."
  exit 1
fi

CLASS=$(cat "$CLASS_FILE")
echo "[HI] Pruning for device class: $CLASS"

mkdir -p "$MEDIC" "$(dirname "$LEDGER")"

# Foreign markers we look for (simple heuristic tags)
FOREIGN_PATTERNS=("webtv" "wsl-only" "proot-only" "a15-only" "samsung-only" "gaia-window")

moved=0
while IFS= read -r -d '' item; do
  base=$(basename "$item")
  for pat in "${FOREIGN_PATTERNS[@]}"; do
    if [[ "$base" == *"$pat"* ]]; then
      # Extra safety: do not touch core Continuity files
      if [[ "$base" == "SKILL.md" || "$base" == "continuity-sentinel.sh" || "$base" == "error_corrector.py" ]]; then
        continue
      fi
      echo "[HI] Foreign artifact → MedicBay: $item"
      mv "$item" "$MEDIC/" 2>/dev/null || true
      echo "{\"ts\":\"$(date -u +%Y-%m-%dT%H:%M:%SZ)\",\"agent\":\"device-prune\",\"numeral\":\"$NUMERAL\",\"msg\":\"pruned-foreign $base for class $CLASS\"}" >> "$LEDGER"
      moved=$((moved+1))
      break
    fi
  done
done < <(find "$ROOT" -maxdepth 3 \( -type f -o -type d \) -print0 2>/dev/null)

echo "[HI] Prune complete. Moved $moved foreign artifact(s) to $MEDIC"
echo "[HI] Review MedicBay before permanent deletion."
