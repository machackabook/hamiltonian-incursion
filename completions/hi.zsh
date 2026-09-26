#compdef hi
# Hamiltonian Incursion — Zsh completion for `hi`
# Numeral 137451921129154222

_hi() {
  local -a cmds
  cmds=(
    'scan:Run continuity sentinel'
    'sentinel:Run continuity sentinel'
    'assist:Full auto-assist suite'
    'auto:Full auto-assist suite'
    'workforce:Device-aware workforce pipeline'
    'work:Device-aware workforce pipeline'
    'prune:Prune foreign device artifacts'
    'detect:Titrate device class'
    'class:Titrate device class'
    'profile:Create Azazel profile'
    'bg:Apply dynamic visual identity'
    'background:Apply dynamic visual identity'
    'pipethru:Run declarative pipeline'
    'pipe:Run declarative pipeline'
    'ledger:Show anomaly ledger'
    'strength:Run strength / corrector pass'
    'pull:git pull from official repo'
    'update:git pull from official repo'
    'ext:Extensions list or pull'
    'extensions:Extensions list or pull'
    'runtime:Probe pip/bun/uv/node/python'
    'rt:Probe pip/bun/uv/node/python'
    'help:Show help'
  )

  _arguments '1:command:(( $cmds ))' '*::arg:->args'
}

compdef _hi hi
