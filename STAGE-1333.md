# STAGE-1333 — hold triangular modulo-based snapping to tetrahedron/lattice (parallel pin) (2026-11-19T16:58Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1333 holding the triangular case mapping in parallel with gaia-visualizer.

## Session pin (paste not rewritten)
- case 'triangular':
  // Modulo-based snapping to form a 3D tetrahedron/triangular lattice
  const tAngle = (Math.floor(this.theta / (Math.PI * 2 / 3)) * (Math.PI * 2 / 3));
  x = major * Math.cos(tAngle) + minor * Math.cos(this.theta * 5);
  z = major * Math.sin(tAngle) + minor * Math.sin(this.theta * 5);
  y = (this.idx % 3 - 1) * major * 0.5 + Math.sin(t) * minor;
- Floor snap of theta to 2π/3 sectors. Y sector free of theta*5.
- prior holds: full kernel continuity from prior connecting pastes.
- Paste not rewritten.

## Enhancement this hop
Parallel hold of the triangular lattice snap case from the connecting chat paste. Matches gaia-visualizer STAGE-1333. Living path consistent. Session paste remains untouched. No secrets. No device rooted.

## Next stages compiled
1. 1334 — hold torus/default standard toroidal math with tube.
2. 1335 — hold full switch completeness with all four cases active.
3. 1336 — hold final position.lerp(new THREE.Vector3(x, y, z), 0.05) alpha literal.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos.
