# STAGE-1227 — hold uniforms write order uTime then uGravity; theta step * gravityPull (2026-11-13 15:12Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1227 as parallel pin.

## Session pin (paste not rewritten)
- this.material.uniforms.uTime.value = t;
- this.material.uniforms.uGravity.value = state.gravityPull;
- this.theta += (0.01 + this.idx * 0.002) * state.gravityPull;
- Order held: uTime first, then uGravity. Theta step multiplies the base rate by gravityPull.
- prior holds: 1226 major/minor pre-switch; phi external.
- Paste not rewritten.

## Enhancement this hop
Parallel pin holds the exact uniforms write sequence and the gravity-scaled theta advance from the connecting paste. No reordering invented. Living path matches. Session paste remains untouched. No secrets. No device rooted.

## Next stages compiled
1. 1228 — hold final lerp(new THREE.Vector3(x, y, z), 0.05) session allocation after switch.
2. 1229 — hold full kernel closure with all prior pins.
3. 1230 — hold geometry switch four cases exclusive.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos. gaia-visualizer advanced to 1233 this cycle.
