# STAGE-888 — hold switch(targetState.geometry) sole four-case dispatch (2026-10-31)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.

## Kernel held (paste not rewritten)
- uniforms: uTime = t; uGravity = state.gravityPull
- theta += (0.01 + this.idx * 0.002) * state.gravityPull
- major = 10 + (this.idx * 2); minor = 3 + (state.toroidalWeave * 2) pre-switch
- switch(targetState.geometry) sole four-case: infinity | hamiltonian | triangular | torus/default
- position.lerp(new THREE.Vector3(x, y, z), 0.05)
- prior: waterfall from gaia-visualizer STAGE-973.

## Enhancement this hop
Holds the sole four-case dispatcher. Paste not rewritten. No secrets. No device rooted.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
