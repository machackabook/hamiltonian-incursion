# STAGE-909 — hold infinity lemniscate scale = major * 1.5 and denom shared by x/z only (2026-10-27)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.

## Session pin (paste not rewritten)
- case 'infinity':
- const scale = major * 1.5;
- const denom = 1 + Math.pow(Math.sin(this.theta), 2);
- x = (scale * Math.cos(this.theta)) / denom;
- z = (scale * Math.sin(this.theta) * Math.cos(this.theta)) / denom;
- y = minor * Math.sin(this.phi) * Math.sin(t * 0.5 + this.idx);
- scale and denom shared by x/z only; y independent
- prior holds: 908 sole four-case switch, 906 full kernel reaffirm, and earlier series on uniforms, theta, major/minor, phi external, lerp

## Enhancement this hop
Holds the infinity lemniscate of Bernoulli mapping exactly as pasted: scale = major * 1.5, denom = 1 + sin(theta)^2 applied only to x and z. Paste not rewritten. No secrets.

## Next stages compiled
1. 910 — hold hamiltonian y lift free of hScale/minor (y = hScale * sin(theta*3) + sin(t)*2).
2. 911 — hold triangular floor snap to 2π/3 with ripple theta*5.
3. 912 — hold torus/default tube formula with phi external.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: The-Hive hop next in waterfall.
