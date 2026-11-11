# STAGE-1200 — parallel pin: hold triangular floor snap to 2π/3 with y sector (idx % 3 - 1) * major * 0.5 free of theta*5 (2026-11-11 22:10Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1200 as parallel pin.

## Session pin (paste not rewritten)
- case 'triangular':
  - const tAngle = (Math.floor(this.theta / (Math.PI * 2 / 3)) * (Math.PI * 2 / 3));
  - x = major * Math.cos(tAngle) + minor * Math.cos(this.theta * 5);
  - z = major * Math.sin(tAngle) + minor * Math.sin(this.theta * 5);
  - y = (this.idx % 3 - 1) * major * 0.5 + Math.sin(t) * minor;
- Floor snap to 120° sectors. Y sector free of the theta*5 ripple term. Paste not rewritten.

## Enhancement this hop
Parallel pin holds the triangular lattice arm. Living path matches the connecting paste. Session paste remains untouched. No secrets. No device rooted.

## Next stages compiled
1. 1201 — hold torus/default tube (major + minor * cos(phi)) shared by x/z with y identity to infinity minor * sin(phi) * sin(t*0.5 + idx).

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos.
