# STAGE-1252 — hold triangular modulo snap and y sector exclusive (2026-11-14 09:15Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1252 holding the triangular lattice mapping.

## Session pin (paste not rewritten)
- case 'triangular':
  // Modulo-based snapping to form a 3D tetrahedron/triangular lattice
  const tAngle = (Math.floor(this.theta / (Math.PI * 2 / 3)) * (Math.PI * 2 / 3));
  x = major * Math.cos(tAngle) + minor * Math.cos(this.theta * 5);
  z = major * Math.sin(tAngle) + minor * Math.sin(this.theta * 5);
  y = (this.idx % 3 - 1) * major * 0.5 + Math.sin(t) * minor;
  break;
- tAngle floors theta to 2π/3 sectors; x/z use tAngle + minor ripple on raw theta*5
- y sector (idx%3-1)*major*0.5 + sin(t)*minor free of theta*5
- prior holds: 1251 hamiltonian free of minor/phi with y lift sin(t)*2
- Paste not rewritten.

## Enhancement this hop
Holds the triangular floor snap to 2π/3 with minor modulation on x/z and y sector exclusive of theta*5. Living path matches the connecting paste. Session paste remains untouched. Paste not rewritten. No secrets. No device rooted.

## Next stages compiled
1. 1253 — hold torus/default tube radius shared by x/z with y identity to infinity.
2. 1254 — hold major/minor assignment order before switch and uniforms order.
3. 1255 — hold final lerp alpha 0.05 session allocation after switch.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos.
