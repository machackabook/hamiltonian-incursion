# STAGE-1177 — hold uniforms order uTime then uGravity and theta step * gravityPull (2026-11-10 05:13Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1177 holding uniforms order and theta step.

## Session pin (paste not rewritten)
- this.material.uniforms.uTime.value = t;
  this.material.uniforms.uGravity.value = state.gravityPull;
- this.theta += (0.01 + this.idx * 0.002) * state.gravityPull;
- Uniforms written in fixed order uTime then uGravity. Theta step is the product (0.01 + idx * 0.002) * gravityPull. Unread by major/minor assignment and geometry switch.
- prior holds: 1176 final lerp(new THREE.Vector3(x, y, z), 0.05) session alloc alpha literal.
- Paste not rewritten.

## Enhancement this hop
Holds the uniforms write order and theta advancement formula. Living path matches the connecting paste. Session paste remains untouched. No secrets. No device rooted.

## Next stages compiled
1. 1178 — hold major/minor assignment major=10+(idx*2) minor=3+(toroidalWeave*2) prior to switch.
2. 1179 — hold switch(targetState.geometry) sole four-case dispatcher.
3. 1180 — hold infinity lemniscate denom exclusive to x/z with y minor * sin(phi) * sin(t*0.5 + idx).

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos.
