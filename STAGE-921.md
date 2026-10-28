# STAGE-921 — hold triangular floor snap to 2π/3 and y sector free of theta*5 (2026-10-28)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.

## Session pin (paste not rewritten)
- Full body held: uniforms uTime then uGravity, theta += (0.01 + idx * 0.002) * gravityPull, major = 10 + (idx * 2), minor = 3 + (toroidalWeave * 2) before switch, four-case switch.
- Triangular: const tAngle = (Math.floor(this.theta / (Math.PI * 2 / 3)) * (Math.PI * 2 / 3)); x = major * Math.cos(tAngle) + minor * Math.cos(this.theta * 5); z = major * Math.sin(tAngle) + minor * Math.sin(this.theta * 5); y = (this.idx % 3 - 1) * major * 0.5 + Math.sin(t) * minor. Floor snap to 2π/3. Y sector free of theta*5. Ripple uses minor.
- Infinity, hamiltonian, torus/default unchanged in this hold.
- Lerp(new THREE.Vector3(x, y, z), 0.05).
- Phi referenced, never assigned inside paste (external binding).
- prior holds: 920 hamiltonian y lift free of hScale/minor

## Enhancement this hop
Holds the triangular modulo-based snapping to form a 3D tetrahedron/triangular lattice: floor to 2π/3 for base angles, y sector (idx % 3 - 1) * major * 0.5 free of the theta*5 ripple. Paste not rewritten. Living path may optimize but must preserve the mapping. No secrets.

## Next stages compiled
1. 922 — hold torus/default tube (major + minor * cos(phi)) shared by x/z.
2. 923 — hold session Vector3 allocation inside lerp (alpha 0.05 literal).
3. 924 — hold phi external binding.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: gaia-visualizer hop next in waterfall.
