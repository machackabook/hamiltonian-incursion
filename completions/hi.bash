# Hamiltonian Incursion — Bash completion for `hi`
# Numeral 137451921129154222

_hi_completions() {
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"

  opts="scan sentinel assist auto workforce work prune detect class profile bg background pipethru pipe ledger strength pull update ext extensions runtime rt help"

  case "$prev" in
    profile)
      COMPREPLY=( $(compgen -W "default azazel minimal" -- "$cur") )
      return 0
      ;;
    pipethru|pipe)
      COMPREPLY=( $(compgen -f -- "$cur") )
      return 0
      ;;
    ext|extensions)
      COMPREPLY=( $(compgen -W "pull list" -- "$cur") )
      return 0
      ;;
  esac

  COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
  return 0
}

complete -F _hi_completions hi
