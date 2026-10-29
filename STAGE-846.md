# STAGE-846 — hold torus/default tube (major + minor * cos(phi)) shared by x/z (2026-10-28)

Connecting chat re-pasted the complete `update(t)` geometric field kernel. Waterfall from gaia-visualizer STAGE-922 / The-Hive STAGE-891.

## Kernel held (paste not rewritten)
- uniforms: uTime = t; uGravity = state.gravityPull
- theta += (0.01 + idx * 0.002) * gravityPull
- major = 10 + (idx * 2); minor = 3 + (toroidalWeave * 2) pre-switch
- switch(targetState.geometry): infinity (lemniscate denom 1+sin^{2}(theta), scale=major*1.5), hamiltonian (hScale=major, y=sin(theta*3)*hScale + sin(t)*2), triangular (floor 2π/3, y sector (idx%3-1)*major*0.5 + sin(t)*minor), torus/default tube (major + minor*cos(phi)) shared by x/z; y shared with infinity
- position.lerp(new THREE.Vector3(x,y,z), 0.05)
- phi external

## Enhancement this hop
Holds the standard toroidal math: tube (major + minor * cos(phi)) multiplies both x and z. Y remains the shared minor * sin(phi) * sin(t*0.5 + idx). Paste not rewritten. Living path may optimize but must preserve the mapping. No secrets.

## Next stages compiled
1. 847 — hold session Vector3 allocation inside lerp (alpha 0.05 literal).
2. 848 — hold phi external binding.
3. 849 — hold major/minor pre-switch radii block.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: continuity-engine-ssos hop next in waterfall.
