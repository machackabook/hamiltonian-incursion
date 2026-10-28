# STAGE-913 — hold lerp alpha literal 0.05 no modulation + session Vector3 alloc (2026-10-27)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.

## Session pin (paste not rewritten)
- this.mesh.position.lerp(new THREE.Vector3(x, y, z), 0.05);
- alpha literal 0.05; no modulation by gravityPull or toroidalWeave
- session allocates new THREE.Vector3 inside the lerp call
- prior holds: 912 torus/default tube, 911 triangular, 910 hamiltonian, 909 infinity, and earlier series

## Enhancement this hop
Holds the session lerp exactly as pasted: literal alpha 0.05 and new Vector3 allocation. Living path may reuse a target vector. Paste not rewritten. No secrets.

## Next stages compiled
1. 914 — hold phi external (referenced, never assigned in paste).
2. 915 — hold uniforms write order uTime then uGravity.
3. 916 — hold theta step (0.01 + idx * 0.002) * gravityPull unread by switch.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: gaia-visualizer hop next in waterfall.
