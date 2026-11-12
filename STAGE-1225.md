# STAGE-1225 — hold uniforms order uTime then uGravity and theta step * gravityPull (2026-11-12 23:12Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1225 as parallel pin.

## Session pin (paste not rewritten)
- this.material.uniforms.uTime.value = t;
- this.material.uniforms.uGravity.value = state.gravityPull;
- this.theta += (0.01 + this.idx * 0.002) * state.gravityPull;
- Order is uTime then uGravity; theta increment multiplied by gravityPull.
- prior holds: 1224 final lerp(new THREE.Vector3(x, y, z), 0.05) session alloc alpha literal unread by gravityPull/toroidalWeave (parallel).
- Paste not rewritten.

## Enhancement this hop
Parallel pin holds the uniforms assignment order uTime then uGravity, and the theta advance scaled by state.gravityPull. Living kernel matches the connecting paste order. Session paste remains the literal form. No secrets. No device rooted.

## Next stages compiled
1. 1226 — hold switch(targetState.geometry) sole four-case dispatcher.
2. 1227 — hold infinity lemniscate denom shared by x/z only; y unread by denom.
3. 1228 — hold hamiltonian parametric free of minor on x/z; y lift free of hScale/minor.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos.
