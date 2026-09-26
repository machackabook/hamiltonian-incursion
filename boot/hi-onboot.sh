#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — On-boot automation
# Numeral 137451921129154222
set -euo pipefail

HI_ROOT="${HI_ROOT:-$HOME/hamiltonian-incursion}"
export PATH="$HOME/bin:$PATH"

if [[ -x "$HI_ROOT/bin/hi" ]]; then
  ln -sf "$HI_ROOT/bin/hi" "$HOME/bin/hi" 2>/dev/null || true
fi

if [[ -x "$HI_ROOT/device/detect.sh" ]]; then
  bash "$HI_ROOT/device/detect.sh" >/dev/null 2>&1 || true
fi

echo "[HI] On-boot complete $(date -u +%Y-%m-%dT%H:%M:%SZ)" >> /tmp/hi-boot.log
