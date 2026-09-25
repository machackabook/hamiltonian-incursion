# Azazel Command Structure — Hamiltonian Incursion

**Defensive command surface for Continuity / AzazelDeimos lineage.**

Numeral: 137451921129154222

## Core Principles
- All commands are local-first and defensive.
- No new listening ports.
- Every invocation is optionally logged to the anomaly ledger.
- Profile creation is explicit and user-confirmed.

## Primary Command Families

| Family | Prefix | Purpose |
|--------|--------|--------|
| Sentinel | `hi-` | Defensive scans, remedy, ledger |
| Azazel  | `az-`  | Profile, environment, media, completion |
| Forge   | `forge-` | Daily cycle, strength scoring |
| Medic   | `mb-` | Quarantine / MedicBay |

## Recommended Shell Aliases (add to ~/.bashrc or ~/.zshrc)

```bash
# Hamiltonian Incursion / Azazel
alias hi-scan='~/bin/continuity-sentinel.sh'
alias hi-ledger='tail -n 50 ~/strange-loop-a15-controller/continuity_ledger.jsonl'
alias hi-strength='python3 ~/strange-loop-a15-controller/agents/error_corrector.py --ledger ~/strange-loop-a15-controller/continuity_ledger.jsonl --remedy ~/strange-loop-a15-controller/.github/remedy'
alias az-profile='bash ~/hamiltonian-incursion/profiles/create_profile.sh'
alias az-bg='bash ~/hamiltonian-incursion/backgrounds/set_dynamic_bg.sh'
alias az-complete='source ~/hamiltonian-incursion/profiles/azazel_completion.sh'
```

## Profile Creation
Profiles live under `profiles/`. Each profile is a directory containing:
- `env.sh` — environment variables and path augmentations
- `aliases.sh` — command aliases
- `completion.sh` — shell completion definitions
- `media/` — optional background / audio assets

## Dynamic Termux Background Media
Use `backgrounds/set_dynamic_bg.sh` (requires termux-api / termux-wallpaper if available).
Fallback: set `$HOME/.termux/colors.properties` and `termux.properties` for visual identity.

## Ollama Integration (local only)
See `integrations/ollama_stub.md`. Strictly local inference. No network exposure by default.
