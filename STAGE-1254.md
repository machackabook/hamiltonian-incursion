# STAGE-1254 — parallel pin: hold major/minor assignment order before switch and uniforms order (2026-11-14 19:10Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1254 as parallel pin.

## Session pin (paste not rewritten)
- this.material.uniforms.uTime.value = t;
- this.material.uniforms.uGravity.value = state.gravityPull;
- this.theta += (0.01 + this.idx * 0.002) * state.gravityPull;
- let major = 10 + (this.idx * 2);
- let minor = 3 + (state.toroidalWeave * 2);
- switch follows major/minor.
- Order held: uTime then uGravity; major/minor before switch.
- prior holds: 1252 triangular floor snap.
- Paste not rewritten.

## Enhancement this hop
Parallel pin holds major/minor prior to switch and uniforms order. Living path matches the connecting paste. Session paste remains untouched. No secrets. No device rooted.

## Next stages compiled
1. 1255 — hold final lerp alpha 0.05.
2. 1256 — hold full kernel closure parallel.
3. 1257 — hold phi external parallel.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos. gaia-visualizer advanced to 1254 this cycle.
