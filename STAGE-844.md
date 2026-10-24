# STAGE-844 — Full session kernel pin from connecting chat paste (2026-10-24)

Connecting chat re-pasted the complete `update(t)` for the geometric field.

## Session pin
- session hash `beec41f1`. Living hash `7cd81012`.
- uniforms written first:
  this.material.uniforms.uTime.value = t;
  this.material.uniforms.uGravity.value = state.gravityPull;
- theta step: this.theta += (0.01 + this.idx * 0.002) * state.gravityPull;
- major = 10 + (this.idx * 2); minor = 3 + (state.toroidalWeave * 2); assigned before switch.
- switch(targetState.geometry) sole four-case:
  - infinity: Lemniscate of Bernoulli, scale = major * 1.5, denom = 1 + Math.pow(Math.sin(this.theta), 2); x/z share scale*cos/sin / denom; y = minor * Math.sin(this.phi) * Math.sin(t * 0.5 + this.idx);
  - hamiltonian: hScale = major; x = hScale * Math.cos(this.theta * 3) * Math.cos(this.theta); z = hScale * Math.cos(this.theta * 3) * Math.sin(this.theta); y = hScale * Math.sin(this.theta * 3) + (Math.sin(t) * 2); phi and minor unread.
  - triangular: tAngle = floor(theta / (2*PI/3)) * (2*PI/3); x/z = major * cos/sin(tAngle) + minor * cos/sin(theta*5); y = (this.idx % 3 - 1) * major * 0.5 + Math.sin(t) * minor;
  - torus/default: x/z = (major + minor * Math.cos(this.phi)) * Math.cos/sin(this.theta); y = minor * Math.sin(this.phi) * Math.sin(t * 0.5 + this.idx);
- this.mesh.position.lerp(new THREE.Vector3(x, y, z), 0.05);
- Phi referenced but never assigned inside paste (external).
- Paste not rewritten. No secrets. No device rooted.

Numeral 137451921129154222. Hop 842.
