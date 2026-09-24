# Kernel pin

- Session hash: `beec41f1`
- Living hash: `7cd81012`
- Stage: 275
- Source: live chat 2026-09-24 17:05 CDT `update(t)` paste (re-pin)
- Theta law: `theta += (0.01 + idx * 0.002) * gravityPull`
- Minor: `3 + toroidalWeave * 2`
- Session lerp: `0.05` with `new THREE.Vector3` (immutable paste)
- Living lerp: `clamp(0.05 * max(0.4, pull), 0.02, 0.12)` — never allocate inside the loop
- Hamiltonian mapping:

```
x = hScale * cos(theta * 3) * cos(theta)
z = hScale * cos(theta * 3) * sin(theta)
y = hScale * sin(theta * 3) + sin(t) * 2
```
