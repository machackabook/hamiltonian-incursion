#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — Enhanced one-shot installer (defensive + non-root backend)
# Numeral: 137451921129154222
# ALL DOWNLOADS FROM OFFICIAL GITHUB ONLY
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
echo "[HI] Enhanced install from ${REPO_ROOT}..."

pkg install -y git gh jq curl termux-api cronie python termux-am openssh 2>/dev/null || true

mkdir -p "$HOME/bin" \
         "$HOME/strange-loop-a15-controller"/{.github/remedy,scans,agents,ledger} \
         "$HOME/.hi/profiles"

# Core sentinel + corrector
cp "$REPO_ROOT/scripts/continuity-sentinel.sh" "$HOME/bin/" 2>/dev/null || true
cp "$REPO_ROOT/scripts/error_corrector.py"    "$HOME/strange-loop-a15-controller/agents/" 2>/dev/null || true
cp "$REPO_ROOT/scripts/hi-auto-assist.sh"     "$HOME/bin/" 2>/dev/null || true
cp "$REPO_ROOT/scripts/rite-of-passage-permissions.sh" "$HOME/bin/" 2>/dev/null || true
cp "$REPO_ROOT/scripts/setup-termux-addons.sh" "$HOME/bin/" 2>/dev/null || true

# All scans
cp "$REPO_ROOT/scans/"*.sh "$HOME/strange-loop-a15-controller/scans/" 2>/dev/null || true

chmod +x "$HOME/bin/"* 2>/dev/null || true
chmod +x "$HOME/strange-loop-a15-controller/scans/"*.sh 2>/dev/null || true
chmod +x "$HOME/strange-loop-a15-controller/agents/"*.py 2>/dev/null || true

# Boot + 5-min cron
mkdir -p "$HOME/.termux/boot"
cat > "$HOME/.termux/boot/hi-sentinel.sh" << 'BOOT'
#!/data/data/com.termux/files/usr/bin/bash
$HOME/bin/continuity-sentinel.sh
BOOT
chmod +x "$HOME/.termux/boot/hi-sentinel.sh"

(crontab -l 2>/dev/null | grep -v continuity-sentinel; echo "*/5 * * * * $HOME/bin/continuity-sentinel.sh") | crontab -

# Run the Rite of Passage (non-root permissions + Continuity tree)
if [[ -f "$REPO_ROOT/scripts/rite-of-passage-permissions.sh" ]]; then
  bash "$REPO_ROOT/scripts/rite-of-passage-permissions.sh" || true
fi

# Optional profile + visual
if [[ -f "$REPO_ROOT/profiles/create_profile.sh" ]]; then
  bash "$REPO_ROOT/profiles/create_profile.sh" default || true
fi
if [[ -f "$REPO_ROOT/backgrounds/set_dynamic_bg.sh" ]]; then
  bash "$REPO_ROOT/backgrounds/set_dynamic_bg.sh" || true
fi

echo "[HI] Enhanced A15-Controller lineage armed."
echo "[HI] Non-root backend gates prepared. Run setup-termux-addons after installing official add-ons."
echo "[HI] Numeral 137451921129154222 locked."
echo "[HI] Source of truth: https://github.com/machackabook/hamiltonian-incursion"
