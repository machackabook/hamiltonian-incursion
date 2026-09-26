#!/data/data/com.termux/files/usr/bin/bash
# Create Termux widget / shortcut launchers for key HI commands
# Numeral 137451921129154222
set -euo pipefail

SHORTCUT_DIR="$HOME/.shortcuts"
mkdir -p "$SHORTCUT_DIR"

cat > "$SHORTCUT_DIR/hi-scan" << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
hi scan
EOF

cat > "$SHORTCUT_DIR/hi-workforce" << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
hi workforce
EOF

cat > "$SHORTCUT_DIR/hi-ledger" << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
hi ledger 30
EOF

cat > "$SHORTCUT_DIR/hi-assist" << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
hi assist
EOF

chmod +x "$SHORTCUT_DIR"/*

echo "[HI] Termux shortcuts created in $SHORTCUT_DIR"
echo "[HI] If Termux:Widget is installed they will appear as hotswappable launchers."
