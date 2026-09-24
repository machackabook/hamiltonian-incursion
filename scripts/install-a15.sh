#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — one-shot installer for Samsung A15 / Termux
# Defensive only. Numeral: 137451921129154222
# ALL DOWNLOADS MUST COME FROM THE OFFICIAL GITHUB REPOSITORY.
# https://github.com/machackabook/hamiltonian-incursion
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
echo "[HI] Installing Continuity Sentinel lineage A15-Controller from ${REPO_ROOT}..."

pkg install -y git gh jq curl termux-api cronie python 2>/dev/null || true

mkdir -p "$HOME/bin" \
         "$HOME/strange-loop-a15-controller"/{.github/remedy,scans,agents,ledger}

# Install from the cloned GitHub tree only
cp "$REPO_ROOT/scripts/continuity-sentinel.sh" "$HOME/bin/"
cp "$REPO_ROOT/scripts/error_corrector.py"    "$HOME/strange-loop-a15-controller/agents/"
cp "$REPO_ROOT/scans/"*.sh                    "$HOME/strange-loop-a15-controller/scans/" 2>/dev/null || true

chmod +x "$HOME/bin/continuity-sentinel.sh"
chmod +x "$HOME/strange-loop-a15-controller/agents/error_corrector.py"
chmod +x "$HOME/strange-loop-a15-controller/scans/"*.sh 2>/dev/null || true

# Boot + cron (5-minute defensive cycle)
mkdir -p "$HOME/.termux/boot"
cat > "$HOME/.termux/boot/hi-sentinel.sh" << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
$HOME/bin/continuity-sentinel.sh
EOF
chmod +x "$HOME/.termux/boot/hi-sentinel.sh"

(crontab -l 2>/dev/null | grep -v continuity-sentinel; echo "*/5 * * * * $HOME/bin/continuity-sentinel.sh") | crontab -

echo "[HI] Lineage A15-Controller armed."
echo "[HI] Numeral 137451921129154222 locked."
echo "[HI] ADAM + NEXUS junctions required at every large escalation."
echo "[HI] Continuum maximum."
echo "[HI] Source of truth remains: https://github.com/machackabook/hamiltonian-incursion"
