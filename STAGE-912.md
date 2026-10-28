# STAGE-912 — hold torus/default tube formula with phi external (2026-10-27)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.

## Session pin (paste not rewritten)
- case 'torus':
default:
- // Standard Toroidal Math
- x = (major + minor * Math.cos(this.phi)) * Math.cos(this.theta);
- z = (major + minor * Math.cos(this.phi)) * Math.sin(this.theta);
- y = minor * Math.sin(this.phi) * Math.sin(t * 0.5 + this.idx);
- tube formula (major + minor*cos(phi)) shared by x/z; y uses sin(phi) * sin(t*0.5 + idx); phi external
- prior holds: 911 triangular floor snap, 910 hamiltonian y lift, 909 infinity lemniscate, and earlier series

## Enhancement this hop
Holds the torus/default standard toroidal math exactly as pasted. Phi referenced but external. Living path may optimize elsewhere. Paste not rewritten. No secrets.

## Next stages compiled
1. 913 — hold lerp alpha literal 0.05 no modulation + session Vector3 alloc.
2. 914 — hold phi external (referenced, never assigned in paste).
3. 915 — hold uniforms write order uTime then uGravity.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: gaia-visualizer hop next in waterfall.
