# STAGE-1222 — hold torus/default tube (major + minor*cos(phi)) shared by x/z; y identity to infinity (2026-11-12 20:09Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1222 as parallel pin.

## Session pin (paste not rewritten)
- case 'torus':
        default:
            // Standard Toroidal Math
            x = (major + minor * Math.cos(this.phi)) * Math.cos(this.theta);
            z = (major + minor * Math.cos(this.phi)) * Math.sin(this.theta);
            y = minor * Math.sin(this.phi) * Math.sin(t * 0.5 + this.idx);
            break;
- Standard toroidal tube. (major + minor*cos(phi)) shared by x and z. y identity to infinity case: minor * sin(phi) * sin(t*0.5 + idx).
- prior holds: 1221 triangular floor snap to 2π/3 with minor modulation and y sector free of theta*5 (parallel).
- Paste not rewritten.

## Enhancement this hop
Parallel pin holds the torus/default standard toroidal math. Living path matches the connecting paste. Session paste remains untouched. No secrets. No device rooted.

## Next stages compiled
1. 1223 — hold major/minor assignment major=10+(idx*2) minor=3+(toroidalWeave*2) prior to switch; phi external.
2. 1224 — hold final lerp(new THREE.Vector3(x, y, z), 0.05) session alloc alpha literal unread by gravityPull/toroidalWeave.
3. 1225 — hold uniforms order uTime then uGravity and theta step * gravityPull.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: parallel pins in sibling repos.
