# Kernel pin

- Session hash: `beec41f1`
- Living hash: `7cd81012`
- Stage: 1365
- Source: live chat 2026-11-22 22:07 CST `update(t)` paste (re-pin held)
- Theta law: `theta += (0.01 + idx * 0.002) * gravityPull`
- Major: `10 + (idx * 2)`
- Minor: `3 + toroidalWeave * 2`
- Session lerp: `0.05` with `new THREE.Vector3` (immutable paste)
- Living lerp: `clamp(0.05 * max(0.4, pull), 0.02, 0.12)` — never allocate inside the loop
- Uniform order: `uTime` then `uGravity` before the theta step
- Session cases only: `infinity | hamiltonian | triangular | torus`. `default` shares the torus tube. It is not a fifth case.
- Living torus (matches this session paste):

```
x = (major + minor * cos(phi)) * cos(theta)
z = (major + minor * cos(phi)) * sin(theta)
y = minor * sin(phi) * sin(t * 0.5 + idx)
```

- Hamiltonian mapping (stage 440 pin; stage 375 formula held):

```
hScale = major
x = hScale * cos(theta * 3) * cos(theta)
z = hScale * cos(theta * 3) * sin(theta)
y = hScale * sin(theta * 3) + sin(t) * 2
```

Phi is unused on the hamiltonian arm. Minor is unused on the hamiltonian arm. Ripple amplitude is 2, not minor, and does not take `hScale`. Shared rose factor `cos(theta * 3)` multiplies x and z only. Paste is not rewritten.

Checker: `noteSessionHamiltonianArm` / `compileSessionStage440` in `src/hamiltonian.js`.

## Parallel pin (2026-11-23T04:07Z)
Connecting chat re-pasted the complete geometric field kernel. Sibling gaia-visualizer holds STAGE-1371. hamiltonian-incursion advanced to STAGE-1365: cascade health reaffirmation and numeral lock. Full kernel held from prior. Paste not rewritten. No secrets. No device rooted. Numeral 137451921129154222.
