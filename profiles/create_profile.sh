#!/data/data/com.termux/files/usr/bin/bash
# Azazel / Hamiltonian — Profile creator
# Numeral 137451921129154222
set -euo pipefail

PROFILE_NAME="${1:-default}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PROFILE_DIR="$ROOT/profiles/$PROFILE_NAME"

mkdir -p "$PROFILE_DIR/media"

cat > "$PROFILE_DIR/env.sh" << EOF
# Azazel profile: $PROFILE_NAME
# Generated $(date -u +%Y-%m-%dT%H:%M:%SZ)
export HI_NUMERAL="137451921129154222"
export HI_PROFILE="$PROFILE_NAME"
export PATH="\$HOME/bin:\$PATH"
EOF

cat > "$PROFILE_DIR/aliases.sh" << 'EOF'
alias hi-scan='~/bin/continuity-sentinel.sh'
alias hi-ledger='tail -n 50 ~/strange-loop-a15-controller/continuity_ledger.jsonl 2>/dev/null || echo "ledger not yet created"'
alias az-bg='bash ~/hamiltonian-incursion/backgrounds/set_dynamic_bg.sh'
EOF

cat > "$PROFILE_DIR/completion.sh" << 'EOF'
# Basic Azazel / HI completion stub
_hi_complete() {
  local cur="${COMP_WORDS[COMP_CWORD]}"
  COMPREPLY=( $(compgen -W "scan ledger strength profile bg complete" -- "$cur") )
}
complete -F _hi_complete hi
complete -F _hi_complete az
EOF

echo "[HI] Profile '$PROFILE_NAME' created at $PROFILE_DIR"
echo "[HI] Source it with: source $PROFILE_DIR/env.sh && source $PROFILE_DIR/aliases.sh"
echo "[HI] Optional completion: source $PROFILE_DIR/completion.sh"
