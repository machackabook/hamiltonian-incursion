# STAGE-979 — hold torus/default tube (major + minor*cos(phi)) shared by x/z (2026-10-31)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.

## Session pin (paste not rewritten)
- uniforms: this.material.uniforms.uTime.value = t; this.material.uniforms.uGravity.value = state.gravityPull;
- theta += (0.01 + this.idx * 0.002) * state.gravityPull;
- major = 10 + (this.idx * 2); minor = 3 + (state.toroidalWeave * 2);
- switch(targetState.geometry): infinity (lemniscate of Bernoulli, denom 1 + sin(theta)^2 shared by x/z only, scale=major*1.5, y=minor*sin(phi)*sin(t*0.5+idx) unread by denom), hamiltonian (parametric x/z free of minor, y = hScale*sin(theta*3) + sin(t)*2 free of hScale/minor on the lift), triangular (floor theta to 2π/3, y sector (idx%3-1)*major*0.5 + sin(t)*minor free of theta*5), torus/default (tube (major + minor*cos(phi)) on x/z, y shared with infinity);
- this.mesh.position.lerp(new THREE.Vector3(x, y, z), 0.05);
- prior holds: 978 triangular floor snap to 2π/3 and y sector free of theta*5.

## Enhancement this hop
Holds the torus/default case: x = (major + minor * Math.cos(this.phi)) * Math.cos(this.theta); z = (major + minor * Math.cos(this.phi)) * Math.sin(this.theta); y = minor * Math.sin(this.phi) * Math.sin(t * 0.5 + this.idx). Tube radius (major + minor*cos(phi)) shared by x and z only. Y identity to infinity y. Default falls through to torus. Paste not rewritten. No secrets. No device rooted.

## Next stages compiled
1. 980 — hold full kernel pin with session Vector3 lerp.
2. 981 — hold phi external binding unread inside paste assignment.
3. 982 — hold uniforms write order uTime then uGravity.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: continuity-ledger-cycle next in waterfall.
