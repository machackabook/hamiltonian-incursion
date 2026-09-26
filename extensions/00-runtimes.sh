# Hotswappable extension — runtime helpers
# Numeral 137451921129154222
# Sourced automatically by the `hi` dispatcher.

hi_ext_pip() {
  if command -v pip3 >/dev/null 2>&1; then
    pip3 "$@"
  elif command -v pip >/dev/null 2>&1; then
    pip "$@"
  else
    echo "[HI] pip not found in environment"
    return 1
  fi
}

hi_ext_uv() {
  if command -v uv >/dev/null 2>&1; then
    uv "$@"
  else
    echo "[HI] uv not found — install via official method if desired"
    return 1
  fi
}

hi_ext_bun() {
  if command -v bun >/dev/null 2>&1; then
    bun "$@"
  else
    echo "[HI] bun not found — install via official method if desired"
    return 1
  fi
}
