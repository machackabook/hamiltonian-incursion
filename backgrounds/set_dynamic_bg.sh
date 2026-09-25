#!/data/data/com.termux/files/usr/bin/bash
# Dynamic Termux background / visual identity helper
# Numeral 137451921129154222
# Defensive: only touches local Termux config. No network.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
COLORS="$HOME/.termux/colors.properties"
PROPS="$HOME/.termux/termux.properties"

mkdir -p "$HOME/.termux"

# Safe default Continuity / Azazel visual identity (dark + gold accent)
cat > "$COLORS" << 'EOF'
# Hamiltonian / Azazel visual identity
background=#05070a
foreground=#e0e0e0
cursor=#fbbf24
color0=#0a0a0a
color1=#ff4444
color2=#00ff88
color3=#fbbf24
color4=#00ffff
color5=#aa88ff
color6=#00ffff
color7=#e0e0e0
color8=#555555
color9=#ff6666
color10=#66ffaa
color11=#ffd700
color12=#66ffff
color13=#cc99ff
color14=#66ffff
color15=#ffffff
EOF

# Optional: force dark theme and larger font if not already set
if [[ -f "$PROPS" ]]; then
  grep -q "use-black-ui" "$PROPS" || echo "use-black-ui = true" >> "$PROPS"
else
  echo "use-black-ui = true" > "$PROPS"
  echo "font-size = 14" >> "$PROPS"
fi

echo "[HI] Dynamic background / color identity applied."
echo "[HI] Restart Termux or run: termux-reload-settings (if available)"
echo "[HI] For true wallpaper support install termux-api and use termux-wallpaper if desired."
