# STAGE-1297 — hold triangular modulo floor snap to 2π/3 (2026-11-16T23:12Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1297 holding the triangular lattice snap.

## Session pin (paste not rewritten)
- case 'triangular':
- // Modulo-based snapping to form a 3D tetrahedron/triangular lattice
- const tAngle = (Math.floor(this.theta / (Math.PI * 2 / 3)) * (Math.PI * 2 / 3));
- x = major * Math.cos(tAngle) + minor * Math.cos(this.theta * 5);
- z = major * Math.sin(tAngle) + minor * Math.sin(this.theta * 5);
- y = (this.idx % 3 - 1) * major * 0.5 + Math.sin(t) * minor;
- Floor snap of theta to multiples of 2π/3 for lattice vertices.
- prior holds: 1296 major/minor assignment prior to switch.
- Paste not rewritten.

## Enhancement this hop
Holds the triangular case modulo floor snap to 2π/3 matching the connecting paste. y uses sector (idx%3-1)*major*0.5 + sin(t)*minor. Living path matches. Session paste remains untouched. No secrets. No device rooted.

## Next stages compiled
1. 1298 — hold switch(targetState.geometry) sole four-case dispatcher.
2. 1299 — hold infinity lemniscate denom shared by x/z only.
3. 1300 — hold hamiltonian parametric mapping.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos.
