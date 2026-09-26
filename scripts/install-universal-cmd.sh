#!/data/data/com.termux/files/usr/bin/bash
# Install universal `hi` dispatcher + completions + on-boot + shortcuts
# Numeral 137451921129154222
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
echo "[HI] Installing universal command structure from $ROOT"

mkdir -p "$HOME/bin" "$HOME/.termux/boot" "$HOME/.shortcuts"

cp "$ROOT/bin/hi" "$HOME/bin/hi"
chmod +x "$HOME/bin/hi"

mkdir -p "$HOME/.bash_completion.d" 2>/dev/null || true
if [[ -d "$HOME/.bash_completion.d" ]]; then
  cp "$ROOT/completions/hi.bash" "$HOME/.bash_completion.d/hi"
fi

if [[ -n "${ZDOTDIR:-$HOME}" ]]; then
  mkdir -p "${ZDOTDIR:-$HOME}/.zsh/completions" 2>/dev/null || true
  cp "$ROOT/completions/hi.zsh" "${ZDOTDIR:-$HOME}/.zsh/completions/_hi" 2>/dev/null || true
fi

if [[ -f "$HOME/.bashrc" ]]; then
  if ! grep -q "hi.bash\|hi_completions" "$HOME/.bashrc" 2>/dev/null; then
    echo '' >> "$HOME/.bashrc"
    echo '# Hamiltonian Incursion universal completion' >> "$HOME/.bashrc"
    echo '[[ -f "$HOME/.bash_completion.d/hi" ]] && source "$HOME/.bash_completion.d/hi"' >> "$HOME/.bashrc"
    echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"
  fi
fi

cp "$ROOT/boot/hi-onboot.sh" "$HOME/.termux/boot/hi-onboot.sh"
chmod +x "$HOME/.termux/boot/hi-onboot.sh"

bash "$ROOT/shortcuts/create_termux_shortcuts.sh" || true

mkdir -p "$ROOT/extensions"
cp "$ROOT/extensions/"*.sh "$ROOT/extensions/" 2>/dev/null || true

echo "[HI] Universal command structure installed."
echo "[HI] Open a new shell or run: source ~/.bashrc"
echo "[HI] Then: hi help"
echo "[HI] Numeral 137451921129154222"
