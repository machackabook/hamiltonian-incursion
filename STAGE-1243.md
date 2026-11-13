# STAGE-1243 — full kernel pin from connecting paste (2026-11-13 21:10Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1243 holding the session full kernel.

## Session pin (paste not rewritten)
- this.material.uniforms.uTime.value = t;
- this.material.uniforms.uGravity.value = state.gravityPull;
- this.theta += (0.01 + this.idx * 0.002) * state.gravityPull;
- major = 10 + (this.idx * 2); minor = 3 + (state.toroidalWeave * 2);
- switch(targetState.geometry): infinity (lemniscate of Bernoulli, denom 1 + sin(theta)^2 shared by x/z, scale=major*1.5, y=minor*sin(phi)*sin(t*0.5+idx)), hamiltonian (parametric favoring vertex traversal, hScale=major, y=hScale*sin(theta*3) + sin(t)*2), triangular (modulo-based 3D tetrahedron/triangular lattice, floor to 2π/3, y sector (idx%3-1)*major*0.5 + sin(t)*minor), torus/default (standard toroidal (major + minor*cos(phi)) on x/z, y=minor*sin(phi)*sin(t*0.5+idx));
- this.mesh.position.lerp(new THREE.Vector3(x, y, z), 0.05);
- Phi external. Paste not rewritten.

## Enhancement this hop
Full session kernel held as source of truth for the geometric field. Uniforms order, theta*gravityPull, major/minor pre-switch, exclusive four-case switch, and final lerp alpha 0.05 preserved exactly. Living path matches mathematical targets and control flow. No secrets. No device rooted. Point-zero null refused.

## Next stages compiled
1. 1244 — hold phi external unread by switch cases.
2. 1245 — hold minor radius assignment prior to switch.
3. 1246 — hold full kernel closure with all prior pins parallel.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos. Waterfall next: The-Hive.
