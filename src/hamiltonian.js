/** Hamiltonian branch of the pinned chat kernel. Stage 275. No THREE alloc. */
export function evaluateHamiltonian({ theta, t, major }) {
  const hScale = major;
  const x = hScale * Math.cos(theta * 3) * Math.cos(theta);
  const z = hScale * Math.cos(theta * 3) * Math.sin(theta);
  const y = hScale * Math.sin(theta * 3) + Math.sin(t) * 2;
  const finite = Number.isFinite(x) && Number.isFinite(y) && Number.isFinite(z);
  return finite ? { x, y, z } : { x: 0, y: 0, z: 0 };
}

export function livingLerpAlpha(pull = 1, base = 0.05) {
  const p = Number.isFinite(pull) ? pull : 1;
  const b = Number.isFinite(base) ? base : 0.05;
  return Math.min(0.12, Math.max(0.02, b * Math.max(0.4, p)));
}

export const HAMILTONIAN_CONTRACT = {
  geometry: 'hamiltonian',
  gravityPull: 1.0,
  toroidalWeave: 1.0,
  lerp: 0.05,
  livingLerp: 'clamp(0.05 * max(0.4, pull), 0.02, 0.12)',
  numeral: '137451921129154222',
  stage: 275,
};
