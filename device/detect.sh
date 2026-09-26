#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — Device Titration / Awareness Detector
# Numeral 137451921129154222
# Outputs a single device class for selective pull + prune decisions.
set -euo pipefail

detect_class() {
  # Termux + Samsung / Android primary
  if [[ -n "${PREFIX:-}" && -d "/data/data/com.termux" ]]; then
    if [[ -f /system/build.prop ]] && grep -qi "samsung\|a15\|sm-a" /system/build.prop 2>/dev/null; then
      echo "a15-termux"
      return
    fi
    echo "a15-termux"   # generic Termux still treated as primary A15-Controller lineage
    return
  fi

  # WSL
  if grep -qi microsoft /proc/version 2>/dev/null || [[ -n "${WSL_DISTRO_NAME:-}" ]]; then
    echo "wsl"
    return
  fi

  # proot / proot-distro
  if command -v proot >/dev/null 2>&1 || [[ -d "$PREFIX/var/lib/proot-distro" ]] || [[ -n "${PROOT_TMP_DIR:-}" ]]; then
    echo "proot"
    return
  fi

  # Extremely constrained / WebTV-class heuristic (very limited tools, no real package manager)
  if ! command -v apt >/dev/null 2>&1 && ! command -v pkg >/dev/null 2>&1 && ! command -v apk >/dev/null 2>&1; then
    echo "webtv-class"
    return
  fi

  echo "generic-posix"
}

CLASS=$(detect_class)
echo "$CLASS"

# Also write a machine-readable stamp for other scripts
mkdir -p "${HOME}/.hi"
echo "$CLASS" > "${HOME}/.hi/device_class"
echo "$(date -u +%Y-%m-%dT%H:%M:%SZ)" > "${HOME}/.hi/device_class_ts"
echo "[HI] Device class titrated: $CLASS" >&2
