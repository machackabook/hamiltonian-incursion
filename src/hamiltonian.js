/** Hamiltonian branch of the pinned chat kernel. Stage 272. No THREE alloc. */
export function evaluateHamiltonian({ theta, t, major }) {
  const hScale = major;
  const x = hScale * Math.cos(theta * 3) * Math.cos(theta);
  const z = hScale * Math.cos(theta * 3) * Math.sin(theta);
  const y = hScale * Math.sin(theta * 3) + Math.sin(t) * 2;
  const finite = Number.isFinite(x) && Number.isFinite(y) && Number.isFinite(z);
  return finite ? { x, y, z } : { x: 0, y: 0, z: 0 };
}

export const HAMILTONIAN_CONTRACT = {
  geometry: 'hamiltonian',
  gravityPull: 1.0,
  toroidalWeave: 1.0,
  lerp: 0.05,
  numeral: '137451921129154222',
  stage: 272,
};
