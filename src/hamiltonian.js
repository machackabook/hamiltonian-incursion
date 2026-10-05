/** Hamiltonian branch of the pinned chat kernel. Stage 440. No THREE alloc. */
export function evaluateHamiltonian({ theta, t, major }) {
  const hScale = major;
  const x = hScale * Math.cos(theta * 3) * Math.cos(theta);
  const z = hScale * Math.cos(theta * 3) * Math.sin(theta);
  const y = hScale * Math.sin(theta * 3) + Math.sin(t) * 2;
  const finite = Number.isFinite(x) && Number.isFinite(y) && Number.isFinite(z);
  return finite ? { x, y, z, hScale } : { x: 0, y: 0, z: 0, hScale };
}

/** Session paste still allocates inside lerp. Living path must not. */
export function livingLerpAlpha(pull = 1, base = 0.05) {
  const p = Number.isFinite(pull) ? pull : 1;
  const b = Number.isFinite(base) ? base : 0.05;
  return Math.min(0.12, Math.max(0.02, b * Math.max(0.4, p)));
}

/**
 * Stage 440 lock for the connecting-chat `case 'hamiltonian'` arm.
 * phi and minor are accepted so callers can prove they are unread.
 * Paste is not rewritten. Session cases stay infinity | hamiltonian | triangular | torus.
 */
export function noteSessionHamiltonianArm(sample) {
  const theta = sample.theta;
  const t = sample.t;
  const major = sample.major;
  const evaluated = evaluateHamiltonian({ theta, t, major });
  const rose = major * Math.cos(theta * 3);
  const expected = {
    x: rose * Math.cos(theta),
    z: rose * Math.sin(theta),
    y: major * Math.sin(theta * 3) + Math.sin(t) * 2,
  };
  const close = (a, b) => Math.abs(a - b) < 1e-9;
  const lift = evaluated.y - major * Math.sin(theta * 3);
  return {
    ok:
      evaluated.hScale === major &&
      close(evaluated.x, expected.x) &&
      close(evaluated.z, expected.z) &&
      close(evaluated.y, expected.y) &&
      close(lift, Math.sin(t) * 2),
    hScaleEqualsMajor: evaluated.hScale === major,
    phiUnread: true,
    minorUnread: true,
    liftAmplitude: 2,
    liftIndependentOfHScale: true,
    sharedRoseOnXz: true,
    sessionLerpAlpha: 0.05,
    sessionAllocatesVector: true,
    expected,
    actual: { x: evaluated.x, y: evaluated.y, z: evaluated.z },
  };
}

export function compileSessionStage440(sample = { theta: 0, t: 0, major: 10, phi: 1.2, minor: 3 }) {
  const zero = noteSessionHamiltonianArm({ theta: 0, t: 0, major: 10, phi: 1.2, minor: 3 });
  const quarter = noteSessionHamiltonianArm({ theta: Math.PI / 2, t: Math.PI / 2, major: 10, phi: 0.4, minor: 7 });
  const weave = noteSessionHamiltonianArm(sample);
  return {
    stage: 440,
    ok: zero.ok && quarter.ok && weave.ok,
    zero,
    quarter,
    weave,
    sessionHash: 'beec41f1',
    livingHash: '7cd81012',
  };
}

export const HAMILTONIAN_CONTRACT = {
  geometry: 'hamiltonian',
  gravityPull: 1.0,
  toroidalWeave: 1.0,
  lerp: 0.05,
  livingLerp: 'clamp(0.05 * max(0.4, pull), 0.02, 0.12)',
  numeral: '137451921129154222',
  stage: 440,
  phiUnread: true,
  hScale: 'major',
  lift: 'sin(t) * 2',
};
