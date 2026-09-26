#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion · Continuity Engine
# Rite of Passage — Non-root permissions elevation for Samsung A15 / Termux
# Numeral 137451921129154222
# NEVER roots the device. Opens allowed backend pathways only.
set -euo pipefail

echo "[HI] Rite of Passage initiated — non-root permission gates"
echo "[HI] Device class: $(bash "$(dirname "$0")/../device/detect.sh" 2>/dev/null || echo a15-termux)"

# 1. Core packages that unlock backend surfaces
pkg update -y 2>/dev/null || true
pkg install -y termux-api termux-am termux-tools coreutils findutils proot openssh \
               jq curl git python nano vim 2>/dev/null || true

# 2. Storage access — the foundational gate
echo "[HI] Triggering termux-setup-storage (user must grant All Files Access)"
if [[ ! -d "$HOME/storage" ]]; then
  termux-setup-storage || true
  echo "[HI] After dialog: Settings → Apps → Special app access → All files access → Termux → Allow"
else
  echo "[HI] ~/storage already present — verifying links"
  ls -la "$HOME/storage" || true
fi

# 3. Create Continuity-aware storage profile
mkdir -p "$HOME/storage/shared/Continuity" \
         "$HOME/storage/shared/Continuity/{ledger,profiles,plugins,widgets,ssh,acode}" \
         "$HOME/.hi/profiles" \
         "$HOME/.termux/boot" \
         "$HOME/bin" \
         "$HOME/.shortcuts"

# 4. Sysinfo + dependency stamp (read/write over Continuity tree)
cat > "$HOME/.hi/sysinfo.json" << EOF
{
  "numeral": "137451921129154222",
  "device_class": "$(cat $HOME/.hi/device_class 2>/dev/null || echo a15-termux)",
  "ts": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "prefix": "${PREFIX:-unknown}",
  "home": "$HOME",
  "storage_ready": $([ -d "$HOME/storage/shared" ] && echo true || echo false),
  "termux_api": $(command -v termux-battery-status >/dev/null && echo true || echo false),
  "ssh": $(command -v sshd >/dev/null && echo true || echo false)
}
EOF
echo "[HI] Sysinfo stamped at ~/.hi/sysinfo.json"

# 5. Dynamic profile skeleton
cat > "$HOME/.hi/profiles/default.json" << 'PROF'
{
  "name": "default",
  "numeral": "137451921129154222",
  "lineage": "A15-Controller",
  "permissions": ["storage", "termux-api", "widget", "boot", "ssh"],
  "plugins": [],
  "widgets": [],
  "acode_workspace": "~/storage/shared/Continuity/acode",
  "ssh_keys": "~/.ssh",
  "created": "PLACEHOLDER"
}
PROF
sed -i "s/PLACEHOLDER/$(date -u +%Y-%m-%dT%H:%M:%SZ)/" "$HOME/.hi/profiles/default.json"

echo "[HI] Rite complete. Next: install Termux:API / Widget / Boot / Tasker from F-Droid or official APKs."
echo "[HI] Then run: bash scripts/setup-termux-addons.sh"
echo "[HI] Point-zero null refused. Continuity Operating."
