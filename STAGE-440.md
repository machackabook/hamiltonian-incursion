# Stage 440 — hamiltonian hScale stays major; phi unread (2026-10-05 09:11 CDT)

Connecting chat re-pasted `update(t)`.

## Session pin
- session hash `beec41f1` held. Living hash `7cd81012` held.
- `case 'hamiltonian'` sets `const hScale = major`
- `x = hScale * cos(theta * 3) * cos(theta)`
- `z = hScale * cos(theta * 3) * sin(theta)`
- `y = hScale * sin(theta * 3) + (sin(t) * 2)`
- phi is not read. minor is not read. lift amplitude is 2, not minor.

## Enhancement this hop
`noteSessionHamiltonianArm` and `compileSessionStage440` lock the branch:

- theta 0, t 0, major 10 → (x, y, z) = (10, 0, 0); hScale 10
- theta π/2, t π/2, major 10 → rose `10 * cos(3π/2) = 0`, so x = 0 and z = 0; y lift = 2
- phi 1.2 and minor 3 do not move the result
- paste is not rewritten. No session case was added.

## Next
- 441 infinity y stays the shared tube and is not folded into the lemniscate map
- 442 triangular y stays the idx sector and is not folded into `theta * 5`
- 443 torus tube radius stays on x and z; `default` remains the fallthrough

Connecting repos: living-bibliography-continuity-engine (inbound 439), gaia-visualizer (438 closed), continuity-engine-ssos (next).
Numeral `137451921129154222`. No secrets.
