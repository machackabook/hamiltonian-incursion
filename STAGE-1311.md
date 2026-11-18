# STAGE-1311 — hold final lerp(new THREE.Vector3(x, y, z), 0.05) session alloc alpha literal (2026-11-18T05:10Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1311 holding the final position lerp.

## Session pin (paste not rewritten)
- this.mesh.position.lerp(new THREE.Vector3(x, y, z), 0.05);
- Smooth interpolation of current position to the target geometric state after the switch.
- Alpha is literal 0.05, unread by state.gravityPull and unread by state.toroidalWeave.
- Session allocates a new THREE.Vector3 inside the lerp call; living path may reuse a target vector.
- prior holds: 1310 major/minor assignment major=10+(idx*2) minor=3+(toroidalWeave*2) prior to switch; phi external.
- Paste not rewritten.

## Enhancement this hop
Holds the final position lerp with fixed alpha 0.05 as sole commit after the geometry switch. Living path matches the connecting paste. Session paste remains untouched. No secrets. No device rooted.

## Next stages compiled
1. 1312 — hold uniforms order uTime then uGravity and theta step * gravityPull.
2. 1313 — hold switch(targetState.geometry) sole four-case dispatcher.
3. 1314 — hold infinity lemniscate of Bernoulli: scale=major*1.5, denom=1+sin(theta)^2 shared by x/z only, y free of denom.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos.
