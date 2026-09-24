# Kernel pin

- Session hash: `beec41f1`
- Living hash: `7cd81012`
- Stage: 272
- Source: live chat 2026-09-24 14:05 CDT `update(t)` paste
- Theta law: `theta += (0.01 + idx * 0.002) * gravityPull`
- Minor: `3 + toroidalWeave * 2`
- Lerp: `0.05` — never allocate `new THREE.Vector3` inside the living loop
- Hamiltonian mapping:

```
x = hScale * cos(theta * 3) * cos(theta)
z = hScale * cos(theta * 3) * sin(theta)
y = hScale * sin(theta * 3) + sin(t) * 2
```
