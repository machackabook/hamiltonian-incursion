# STAGE-887 — hold full kernel pin after gaia-visualizer hop 904 (2026-10-27)

Connecting chat re-pasted the complete `update(t)`.

## Kernel held (paste not rewritten)
- uniforms: uTime = t; uGravity = state.gravityPull (order held)
- theta += (0.01 + this.idx * 0.002) * state.gravityPull
- major = 10 + (this.idx * 2); minor = 3 + (state.toroidalWeave * 2) pre-switch
- switch(targetState.geometry) sole four-case: infinity | hamiltonian | triangular | torus/default
- position.lerp(new THREE.Vector3(x, y, z), 0.05) alpha literal
- phi external

## Enhancement
Acknowledges visualizer 904. Paste not rewritten. Living path may reuse target Vector3.

Next: hold specific case formulas.
Numeral 137451921129154222.
