# STAGE-1295 — hold uniforms order uTime then uGravity and theta step * gravityPull (2026-11-16T22:09Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1295 holding the uniforms and theta advance.

## Session pin (paste not rewritten)
- this.material.uniforms.uTime.value = t;
- this.material.uniforms.uGravity.value = state.gravityPull;
- this.theta += (0.01 + this.idx * 0.002) * state.gravityPull;
- Uniforms written in order uTime then uGravity; theta step immediately after, multiplied by gravityPull, unread by later switch.
- prior holds: 1294 final lerp(new THREE.Vector3(x, y, z), 0.05).
- Paste not rewritten.

## Enhancement this hop
Holds the opening uniforms assignment order and theta increment. Living path matches the connecting paste. Session paste remains untouched. No secrets. No device rooted.

## Next stages compiled
1. 1296 — hold major/minor assignment major=10+(idx*2) minor=3+(toroidalWeave*2) prior to switch.
2. 1297 — hold triangular modulo floor snap to 2π/3.
3. 1298 — hold switch(targetState.geometry) sole four-case dispatcher.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos.
