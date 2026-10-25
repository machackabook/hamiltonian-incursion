# STAGE-851 — hold uniforms order: uTime then uGravity; sources t and state.gravityPull respectively (2026-10-25)

Connecting chat re-pasted the complete `update(t)` kernel for the geometric field (Three.js).

## Kernel held (paste not rewritten)
- uniforms: this.material.uniforms.uTime.value = t; this.material.uniforms.uGravity.value = state.gravityPull
- order: uTime then uGravity
- sources: function parameter t and state.gravityPull respectively
- theta += (0.01 + idx * 0.002) * gravityPull
- major = 10 + (idx * 2); minor = 3 + (toroidalWeave * 2) pre-switch
- switch(targetState.geometry): infinity (lemniscate denom 1+sin^{2}(theta), scale=major*1.5), hamiltonian (hScale=major, y=sin(theta*3)*hScale + sin(t)*2), triangular (floor 2π/3, y sector (idx%3-1)*major*0.5 + sin(t)*minor), torus/default tube
- position.lerp(new THREE.Vector3(x,y,z), 0.05)
- phi external

## Next stages compiled
- 852: hold lerp alpha remains literal 0.05; no modulation by gravityPull or toroidalWeave
- 853: session switch remains sole four-case; runtime extras stay non-promoted until paste
- 854: hold theta step (0.01 + this.idx * 0.002) * state.gravityPull unread by the geometry switch

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
