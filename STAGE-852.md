# STAGE-852 — hold lerp alpha remains literal 0.05; no modulation by gravityPull or toroidalWeave (2026-10-25)

Connecting chat re-pasted the complete `update(t)` kernel for the geometric field (Three.js).

## Kernel held (paste not rewritten)
- position.lerp(new THREE.Vector3(x, y, z), 0.05)
- alpha literal 0.05 unread by gravityPull and unread by toroidalWeave
- session allocates new Vector3 inside lerp; living path may reuse target
- uniforms: uTime = t; uGravity = state.gravityPull
- theta += (0.01 + idx * 0.002) * gravityPull
- major = 10 + (idx * 2); minor = 3 + (toroidalWeave * 2) pre-switch
- switch(targetState.geometry) sole four-case: infinity | hamiltonian | triangular | torus/default
- phi external

## Next stages compiled
- 853: session switch remains sole four-case; runtime extras stay non-promoted until paste
- 854: hold theta step (0.01 + this.idx * 0.002) * state.gravityPull unread by the geometry switch
- 855: hold major/minor assigned before the switch

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
