#!/data/data/com.termux/files/usr/bin/bash
# Install nexus (normal admin) + nxus (elevated) command structure
# Numeral 137451921129154222
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
echo "[NEXUS] Installing universal command structure from $ROOT"

mkdir -p "$HOME/bin" "$HOME/.termux/boot" "$HOME/.shortcuts" "$HOME/.bash_completion.d"

# Primary dispatchers
cp "$ROOT/bin/nexus" "$HOME/bin/nexus"
cp "$ROOT/bin/nxus"  "$HOME/bin/nxus"
chmod +x "$HOME/bin/nexus" "$HOME/bin/nxus"

# Compatibility: hi → nexus
ln -sf "$HOME/bin/nexus" "$HOME/bin/hi"

# Completions
cp "$ROOT/completions/nexus.bash" "$HOME/.bash_completion.d/nexus"

# Ensure PATH and completion sourcing
if [[ -f "$HOME/.bashrc" ]]; then
  if ! grep -q 'NEXUS\|nexus.bash\|/bin/nexus' "$HOME/.bashrc" 2>/dev/null; then
    cat >> "$HOME/.bashrc" << 'EOF'

# Nexus / Continuity universal command structure
export PATH="$HOME/bin:$PATH"
[[ -f "$HOME/.bash_completion.d/nexus" ]] && source "$HOME/.bash_completion.d/nexus"
EOF
  fi
fi

# On-boot
cat > "$HOME/.termux/boot/nexus-onboot.sh" << EOF
#!/data/data/com.termux/files/usr/bin/bash
export PATH="\$HOME/bin:\$PATH"
ln -sf "\$HOME/bin/nexus" "\$HOME/bin/hi" 2>/dev/null || true
if [[ -x "$ROOT/device/detect.sh" ]]; then
  bash "$ROOT/device/detect.sh" >/dev/null 2>&1 || true
fi
echo "[NEXUS] on-boot \$(date -u +%Y-%m-%dT%H:%M:%SZ)" >> /tmp/nexus-boot.log
EOF
chmod +x "$HOME/.termux/boot/nexus-onboot.sh"

# Termux shortcuts
SHORTCUT_DIR="$HOME/.shortcuts"
mkdir -p "$SHORTCUT_DIR"
for pair in "nexus-scan:nexus scan" "nexus-workforce:nexus workforce" "nexus-ledger:nexus ledger 30" "nexus-assist:nexus assist"; do
  name="${pair%%:*}"
  cmd="${pair#*:}"
  cat > "$SHORTCUT_DIR/$name" << EOF
#!/data/data/com.termux/files/usr/bin/bash
$cmd
EOF
  chmod +x "$SHORTCUT_DIR/$name"
done

echo "[NEXUS] Install complete."
echo "[NEXUS] Normal admin  →  nexus"
echo "[NEXUS] Elevated      →  nxus"
echo "[NEXUS] Compatibility →  hi (alias of nexus)"
echo "[NEXUS] Open new shell or: source ~/.bashrc"
echo "[NEXUS] Then: nexus help"
echo "[NEXUS] Numeral 137451921129154222"
