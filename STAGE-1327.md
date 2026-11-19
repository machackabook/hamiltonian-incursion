# STAGE-1327 — parallel pin: hold lerp alpha literal 0.05 with new Vector3 allocation after switch (2026-11-19T02:15Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1327 as parallel pin.

## Session pin (paste not rewritten)
- this.mesh.position.lerp(new THREE.Vector3(x, y, z), 0.05);
- Alpha literal 0.05 unread by gravityPull or toroidalWeave.
- Fresh Vector3 allocation inside the call each frame (session path).
- Living path may reuse a pooled target; session paste remains the literal form.
- prior holds: 1326 (parallel) theta step product unread by geometry switch.
- Paste not rewritten.

## Enhancement this hop
Parallel pin holds the final position lerp with fixed alpha 0.05 and session allocation. Living path matches the connecting paste. Session paste remains untouched. No secrets. No device rooted.

## Next stages compiled
1. 1328 — hold phi external (referenced, never assigned inside update(t)).
2. 1329 — hold uniforms write order uTime then uGravity.
3. 1330 — hold full kernel closure with all prior pins.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos.
