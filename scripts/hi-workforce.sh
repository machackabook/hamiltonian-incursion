#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — Systematic Workforce Pipeline entrypoint
# Device titration → selective structure → prune → pipethru
# Numeral 137451921129154222
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

echo "[HI] Workforce pipeline starting $(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo "[HI] Numeral 137451921129154222"

# Ensure detector is executable
chmod +x device/detect.sh scripts/*.sh 2>/dev/null || true

# 1. Titrate
CLASS=$(bash device/detect.sh)
echo "[HI] Active device class: $CLASS"

# 2. Run the declarative bootstrap pipeline via pipethru
if [[ -f pipelines/device_aware_bootstrap.pipeline ]]; then
  bash scripts/pipethru.sh pipelines/device_aware_bootstrap.pipeline
else
  echo "[HI] Bootstrap pipeline missing — falling back to auto-assist only"
  bash scripts/hi-auto-assist.sh || true
fi

echo "[HI] Workforce pipeline complete for class: $CLASS"
echo "[HI] Source of truth remains https://github.com/machackabook/hamiltonian-incursion"
