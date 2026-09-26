#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion · Continuity Engine
# Non-root Termux add-on integration (API / Widget / Boot / Float / Tasker)
# Numeral 137451921129154222
set -euo pipefail

echo "[HI] Setting up Termux add-on surfaces (non-root)"

# Ensure termux-api package
pkg install -y termux-api 2>/dev/null || true

# Widget shortcuts directory (Termux:Widget reads ~/.shortcuts)
mkdir -p "$HOME/.shortcuts" "$HOME/.termux"

# Example Continuity widgets (executable scripts)
cat > "$HOME/.shortcuts/hi-status" << 'W'
#!/data/data/com.termux/files/usr/bin/bash
echo "=== Hamiltonian Continuity Status ==="
cat "$HOME/.hi/sysinfo.json" 2>/dev/null || echo "sysinfo missing — run rite-of-passage"
echo "Device class: $(cat $HOME/.hi/device_class 2>/dev/null)"
termux-battery-status 2>/dev/null | head -5 || true
W
chmod +x "$HOME/.shortcuts/hi-status"

cat > "$HOME/.shortcuts/hi-storage-scan" << 'W'
#!/data/data/com.termux/files/usr/bin/bash
bash "$HOME/strange-loop-a15-controller/scans/01-storage-permission-scan.sh" 2>/dev/null \
  || bash "$(dirname "$0")/../scans/01-storage-permission-scan.sh" 2>/dev/null \
  || echo "storage scan not found"
W
chmod +x "$HOME/.shortcuts/hi-storage-scan"

cat > "$HOME/.shortcuts/hi-sentinel" << 'W'
#!/data/data/com.termux/files/usr/bin/bash
$HOME/bin/continuity-sentinel.sh 2>/dev/null || echo "sentinel not armed"
W
chmod +x "$HOME/.shortcuts/hi-sentinel"

# Boot script (Termux:Boot)
mkdir -p "$HOME/.termux/boot"
cat > "$HOME/.termux/boot/00-hi-continuity.sh" << 'BOOT'
#!/data/data/com.termux/files/usr/bin/bash
# Continuity boot hook — non-root
export PATH="$HOME/bin:$PATH"
$HOME/bin/continuity-sentinel.sh &
# Optional: start sshd if keys exist and user enabled
if [[ -f "$HOME/.hi/enable_sshd" ]]; then
  sshd 2>/dev/null || true
fi
BOOT
chmod +x "$HOME/.termux/boot/00-hi-continuity.sh"

# termux.properties allowances (viewable changes only)
if [[ -f "$HOME/.termux/termux.properties" ]]; then
  grep -q "allow-external-apps" "$HOME/.termux/termux.properties" || \
    echo "allow-external-apps = true" >> "$HOME/.termux/termux.properties"
else
  mkdir -p "$HOME/.termux"
  cat > "$HOME/.termux/termux.properties" << 'PROP'
# Continuity Engine controlled properties — non-root
allow-external-apps = true
# extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]
PROP
fi

echo "[HI] Widgets placed in ~/.shortcuts (visible after Termux:Widget install + refresh)"
echo "[HI] Boot hook ready (requires Termux:Boot)"
echo "[HI] Install from F-Droid or official: Termux:API, Termux:Widget, Termux:Boot, Termux:Float, Termux:Tasker"
echo "[HI] Acode: open ~/storage/shared/Continuity/acode as workspace for heavy modulation"
echo "[HI] Continuity Operating."
