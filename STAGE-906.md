# STAGE-906 — Reaffirm full kernel pin from current connecting chat paste of update(t) (2026-10-27)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.

## Session pin (paste not rewritten)
- Full update(t) held as pinned session source of truth from connecting chat.
- this.material.uniforms.uTime.value = t; then this.material.uniforms.uGravity.value = state.gravityPull;
- this.theta += (0.01 + this.idx * 0.002) * state.gravityPull;
- let major = 10 + (this.idx * 2); let minor = 3 + (state.toroidalWeave * 2); assigned before switch
- switch(targetState.geometry) sole four-case: infinity (lemniscate of Bernoulli scale=major*1.5 denom=1+sin(theta)^2 shared by x/z only) | hamiltonian (hScale=major, x/z free of minor, y=hScale*sin(theta*3)+sin(t)*2) | triangular (floor theta to 2π/3, ripple theta*5 on x/z, y sector (idx%3-1)*major*0.5 + sin(t)*minor) | torus/default (tube (major+minor*cos(phi))*cos/sin(theta), y shared with infinity)
- this.mesh.position.lerp(new THREE.Vector3(x, y, z), 0.05); alpha literal, session allocates new Vector3
- this.phi referenced (infinity/torus) never assigned inside update(t)
- prior holds: 887 after visualizer 904, and earlier series on uniforms, theta, major/minor, geometries, lerp, phi external

## Enhancement this hop
Reaffirms the complete update(t) kernel pin from the current connecting chat paste. All formulas held exactly. Living path may reuse Vector3 target to avoid per-frame allocation. Paste not rewritten. No secrets.

## Next stages compiled
1. 907 — hold uniforms write order uTime then uGravity.
2. 908 — hold theta step (0.01 + idx * 0.002) * gravityPull unread by switch.
3. 909 — hold major/minor pre-switch assignment.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: The-Hive hop next in waterfall.
