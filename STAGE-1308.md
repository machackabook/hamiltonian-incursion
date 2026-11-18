# STAGE-1308 — hold triangular floor snap to 2π/3 and y sector free of theta*5 (2026-11-18T00:16Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1308 holding the triangular arm.

## Session pin (paste not rewritten)
- case 'triangular':
            // Modulo-based snapping to form a 3D tetrahedron/triangular lattice
            const tAngle = (Math.floor(this.theta / (Math.PI * 2 / 3)) * (Math.PI * 2 / 3));
            x = major * Math.cos(tAngle) + minor * Math.cos(this.theta * 5);
            z = major * Math.sin(tAngle) + minor * Math.sin(this.theta * 5);
            y = (this.idx % 3 - 1) * major * 0.5 + Math.sin(t) * minor;
            break;
- Floor snap of theta to nearest 2π/3 for lattice. x/z use tAngle plus minor ripple at theta*5. y is sector (idx%3-1)*major*0.5 + sin(t)*minor, free of theta*5.
- prior holds: 1307 hamiltonian free of minor/phi with y lift sin(t)*2.
- Paste not rewritten.

## Enhancement this hop
Holds the triangular modulo floor to 2π/3 and y sector free of the theta*5 ripple. Living path matches the connecting paste. Session paste remains untouched. No secrets. No device rooted.

## Next stages compiled
1. 1309 — hold torus/default tube (major + minor*cos(phi)) shared by x/z, y identity to infinity.
2. 1310 — hold major/minor assignment major=10+(idx*2) minor=3+(toroidalWeave*2) prior to switch; phi external.
3. 1311 — hold final lerp(new THREE.Vector3(x, y, z), 0.05) session alloc alpha literal.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos.
