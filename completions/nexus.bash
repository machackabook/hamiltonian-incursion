# Bash completion for nexus (normal admin) and nxus (elevated)
# Numeral 137451921129154222

_nexus_completions() {
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

_nxus_completions() {
  local cur opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  opts="status whoami mount-check proc-scan help"
  COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
  return 0
}

complete -F _nexus_completions nexus
complete -F _nxus_completions nxus
# Compatibility alias
complete -F _nexus_completions hi
