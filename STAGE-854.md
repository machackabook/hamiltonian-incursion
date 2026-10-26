# STAGE-854 — hold theta step (0.01 + this.idx * 0.002) * state.gravityPull unread by the geometry switch (2026-10-26)

Connecting chat re-pasted the complete `update(t)` kernel for the geometric field (Three.js).

## Kernel held (paste not rewritten)
- this.theta += (0.01 + this.idx * 0.002) * state.gravityPull;
- step form unread by the geometry switch; pure advance before major/minor/switch
- no weave, no minor, no geometry label inside the theta step
- uniforms: uTime = t; uGravity = state.gravityPull (order held)
- major = 10 + (this.idx * 2); minor = 3 + (state.toroidalWeave * 2) pre-switch
- switch(targetState.geometry) sole four-case: infinity | hamiltonian | triangular | torus/default
- position.lerp(new THREE.Vector3(x, y, z), 0.05) alpha literal
- phi external

## Next stages compiled
- 855: hold major = 10 + (this.idx * 2) and minor = 3 + (state.toroidalWeave * 2) assigned before the switch
- 856: hold phi referenced but never assigned inside the session paste (external binding)
- 857: hold session paste allocates new THREE.Vector3 inside lerp; living path may reuse target

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
