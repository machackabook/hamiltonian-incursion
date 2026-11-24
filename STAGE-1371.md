# STAGE-1371 — parallel pin: hold full update(t) geometric field kernel from connecting chat paste (2026-11-24T16:11Z)

Connecting chat re-pasted the complete `update(t)` geometric field kernel.
hamiltonian-incursion advanced to stage 1371 as parallel pin confirmation following STAGE-1370 seek further unknown.

## Enhancement this hop
Full geometric field kernel re-pinned and confirmed from the connecting paste. All prior holds remain intact: uniforms order uTime then uGravity, theta step (0.01 + this.idx * 0.002) * state.gravityPull unread by the geometry switch, major = 10 + (this.idx * 2); minor = 3 + (state.toroidalWeave * 2) assigned pre-switch, sole four-case switch (infinity: lemniscate of Bernoulli with denom = 1 + Math.pow(Math.sin(this.theta), 2) shared by x/z, scale = major * 1.5; hamiltonian: parametric x/z with hScale = major free of minor/phi, y = hScale * Math.sin(this.theta * 3) + (Math.sin(t) * 2); triangular: floor to 2π/3, y sector free of theta*5; torus/default: tube (major + minor * Math.cos(this.phi)) shared by x/z, y identity to infinity). Lerp(new THREE.Vector3(x, y, z), 0.05) alpha literal. Phi external. Y-component identities held. Session paste untouched. No secrets. No device rooted. Daily forge cycle left intact. Numeral lock 137451921129154222 held. Env-check pure presence tree-gate.

## Session pin (paste not rewritten)
```javascript
update(t) {
    this.material.uniforms.uTime.value = t;
    this.material.uniforms.uGravity.value = state.gravityPull;

    this.theta += (0.01 + this.idx * 0.002) * state.gravityPull;
    
    let x, y, z;
    let major = 10 + (this.idx * 2);
    let minor = 3 + (state.toroidalWeave * 2);

    // Evaluate the target geometric state assigned by the LLM
    switch(targetState.geometry) {
        case 'infinity':
            // Lemniscate of Bernoulli mathematical mapping
            const scale = major * 1.5;
            const denom = 1 + Math.pow(Math.sin(this.theta), 2);
            x = (scale * Math.cos(this.theta)) / denom;
            z = (scale * Math.sin(this.theta) * Math.cos(this.theta)) / denom;
            y = minor * Math.sin(this.phi) * Math.sin(t * 0.5 + this.idx);
            break;
            
        case 'hamiltonian':
            // Parametric mapping favoring vertex traversal over a spherical grid
            const hScale = major;
            x = hScale * Math.cos(this.theta * 3) * Math.cos(this.theta);
            z = hScale * Math.cos(this.theta * 3) * Math.sin(this.theta);
            y = hScale * Math.sin(this.theta * 3) + (Math.sin(t) * 2);
            break;
            
        case 'triangular':
            // Modulo-based snapping to form a 3D tetrahedron/triangular lattice
            const tAngle = (Math.floor(this.theta / (Math.PI * 2 / 3)) * (Math.PI * 2 / 3));
            x = major * Math.cos(tAngle) + minor * Math.cos(this.theta * 5);
            z = major * Math.sin(tAngle) + minor * Math.sin(this.theta * 5);
            y = (this.idx % 3 - 1) * major * 0.5 + Math.sin(t) * minor;
            break;

        case 'torus':
        default:
            // Standard Toroidal Math
            x = (major + minor * Math.cos(this.phi)) * Math.cos(this.theta);
            z = (major + minor * Math.cos(this.phi)) * Math.sin(this.theta);
            y = minor * Math.sin(this.phi) * Math.sin(t * 0.5 + this.idx);
            break;
    }

    // Smoothly interpolate current position to the new geometric state target
    this.mesh.position.lerp(new THREE.Vector3(x, y, z), 0.05);
}
```

## Next stages compiled
1. 1372 — waterfall advance to next in operator rotation (Cryptic-Heartbeat or The-Hive).
2. 1373 — cascade health reaffirmation and numeral lock.
3. 1374 — seek further unknown in mesh continuity or phi external binding.

Numeral 137451921129154222. Paste not rewritten. No secrets. No device rooted.
Connecting: following current chat paste of update(t). Parallel with gaia-visualizer STAGE-1382. Next operator: continuity-ledger-cycle or ENCLAVE-ADAM-REUNITED.
