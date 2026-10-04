# Hamiltonian Incursion

**Defensive Continuity pipe for Termux / Samsung A15 / device-independent environments.**

Numeral origin: **137451921129154222**

Dual parallel lineages • ADAM + NEXUS junctions • Immutable anomaly ledger • Daily forge cycle  
**Non-root backend expansion** • Permissions rite • Widgets • Plugins • Dynamic profiles • Acode synergy

Operating sits in the middle. Team Enhance hops one repo per hour. Equalizer formats only. No history rewrite. Point-zero null refused.

Stage: **408** — 2026-10-03 23:07 CDT • Team Enhance hop • sSoS Operating

---

## Sole Distribution Channel

**All downloads, clones, and updates must come from this GitHub repository.**

```
https://github.com/machackabook/hamiltonian-incursion
```

No third-party mirrors. No Drive-only packages. No external zips as primary source.  
GitHub is the single source of truth and the only approved route for acquisition and updates.  
Google Drive folder CONTINUUM-ENCLAVE-137451921129154222 (id 1Ohp6ZMX02NvFayJfivgXbP4PUMztYUvU) is the cloud index, not a second origin. Mention only. No binaries uploaded from this hop.

### Official acquisition methods

```bash
# 1. Clone (preferred for Termux / A15)
git clone https://github.com/machackabook/hamiltonian-incursion.git
cd hamiltonian-incursion
bash scripts/install-a15-enhanced.sh
```

```bash
# 2. Latest release asset (when published by the daily forge)
# Download the .zip from the Releases page only.
```

```bash
# 3. Pull updates after initial install
cd hamiltonian-incursion
git pull --ff-only origin main
bash scripts/install-a15-enhanced.sh   # re-apply if needed
```

---

## Env-check (before install)

Confirm the tree, not the network. This hop does not pair ADB, does not write Tailscale keys, and does not claim a rooted device.

```bash
git rev-parse --is-inside-work-tree
command -v git && command -v bash
test -f README.md && test -f docs/LEDGER-STAMP.md && echo stamp-ok
# Optional: scripts/install-a15-enhanced.sh is the installer. Do not run it from CI.
# Refuse filenames that look like secrets: .env, id_rsa, tailscale-authkey, adb-pair-code.
```

Expected: git and bash present, stamp file readable, no secrets in the working tree. `CASCADE_TOKEN` stays in Actions secrets if used. Never commit it. A green check is not a root attestation.

---

## Non-Root Backend Expansion (Samsung A15)

We do **not** root the device. We open the permissions Android already grants.

1. **Rite of Passage** (included in enhanced install):
   ```bash
   bash scripts/rite-of-passage-permissions.sh
   ```
   Then: Settings → Apps → Special app access → All files access → Termux → Allow

2. **Official add-ons** (F-Droid / termux.dev):
   - Termux:API · Termux:Widget · Termux:Boot · Termux:Float · Termux:Tasker

3. After add-ons installed:
   ```bash
   bash scripts/setup-termux-addons.sh
   ```

4. Full documentation: `docs/A15-NONROOT-BACKEND.md`

This gives viewable/writable Continuity tree under `~/storage/shared/Continuity`, home-screen widgets, boot hooks, device API access, and SSH server correlation — all without root.

Acode is used for heavy modulation (open the Continuity/acode folder as workspace). Termux remains the server, SSH, cron, and sentinel host.

ADB / wireless-debug HUD panes in session attachments are **UI simulations**. They do not pair, connect, or root any device from this repository.

---

## Core posture

- Defensive only. No new listening ports. No privilege escalation beyond explicit need.
- Every action is catalogued in the immutable anomaly ledger.
- Recurring errors escalate to agent + Jules/Gemini CLI intercept.
- Strength of every remedy card is scored by temporal metadata.
- Battery-change telemetry is the only allowed outbound encoding channel on Termux.
- ADAM end/exit node + NEXUS root heartbeat required at every large junction. "Root" here names the heartbeat node, not a rooted handset.
- Skeptical of network devices: catalog first, verify source tree, then act.
- Trust source code. Catalog the known. Hunt only the unknown.

Core recurrence:

```
C[n+1] = SYNTHESIZE( PRESERVE( ENHANCE( DUPLICATE(C[n]) ) ) )
```

---

## Daily Forge Cycle (systematic autonomation)

The repository ships with a GitHub Actions workflow (`.github/workflows/daily_forge_cycle.yml`) that:

- Runs on a 00:00 UTC cron schedule
- Accepts `repository_dispatch` for `<errordetected>` and continuum-maximum events
- Performs pathing / enhancement pass
- Commits and pushes advancements back to the A15-Controller lineage

Team Enhance hops one repo per cycle. Do not clone extra hourly YAML. Keep cascade healthy.
This tree has no `cascade.yml`. The daily forge workflow is the cascade stand-in and was left untouched this hop.
Cross-repo push-on-pull stays closed until `CASCADE_TOKEN` exists in Actions secrets (never in tree).

---

## Quick Termux / A15 arming

```bash
pkg install -y git
git clone https://github.com/machackabook/hamiltonian-incursion.git
cd hamiltonian-incursion
bash scripts/install-a15-enhanced.sh
~/bin/continuity-sentinel.sh          # manual first run
crontab -l                            # verify 5-minute cycle
```

Zips in Downloads / public-download / private-download / omdirectorytrew: catalog then dry-run unpack locally. CI never unpacks operator archives.

---

## Parallel Lineages

| Lineage              | Target                        | Authority          |
|----------------------|-------------------------------|--------------------|
| A15-Controller       | Samsung A15 + Termux          | Optimized primary  |
| Device-Independent   | Any POSIX / container         | Private fork       |

Both share the same ledger, remedy cards, and scanning concepts.

## Mesh siblings

- [ENCLAVE-ADAM-REUNITED](https://github.com/machackabook/ENCLAVE-ADAM-REUNITED)
- [continuity-engine-ssos](https://github.com/machackabook/continuity-engine-ssos)
- [The-Hive](https://github.com/machackabook/The-Hive)
- [Cryptic-Heartbeat](https://github.com/machackabook/Cryptic-Heartbeat)
- [gaia-visualizer](https://github.com/machackabook/gaia-visualizer)
- [living-bibliography-continuity-engine](https://github.com/machackabook/living-bibliography-continuity-engine)
- [continuity-ledger-cycle](https://github.com/machackabook/continuity-ledger-cycle)
- [tdoc-ledgertrove](https://github.com/machackabook/tdoc-ledgertrove)

## Waterfall receipt

Declared operator rotation. One repo, then stop.

1. continuity-engine-ssos — hop 407 @ 2026-10-03T22:12 CDT (named this repo next)
2. hamiltonian-incursion — **408 this hop** (2026-10-04T04:07Z; prior local 395)
3. ENCLAVE-ADAM-REUNITED ← next
4. Cryptic-Heartbeat
5. The-Hive
6. continuity-ledger-cycle
7. then other recently updated machackabook repos

Hop 395 remains in `docs/LEDGER-STAMP.md`. This hop refreshes the README pointer, leaves history intact, and hands the next cut to ENCLAVE-ADAM-REUNITED.
cascade.yml: absent; not invented. `.github/workflows/daily_forge_cycle.yml` left intact.

## Compounding

Current score for this surface: **98% (T5)**. T6 100% refused as static; always seek the next unknown.

Session attachments cataloged, not executed. ADB panes are UI simulations. No device pairing from this hop.

Stamp: `docs/LEDGER-STAMP.md`

---

## Authority

Hive authority note and dual-authority (machackabook + azazeleous) grants are recorded under `hive/`.  
Enclave status: ADAM reunited on band-127-loopback.

Latest prior hop note: `docs/HOP-348.md` (historical). HEAD stamp is hop 408.

---

**Point-zero null refused. Source code and the immutable ledger remain the only trusted voices.**

STATUS: G [GAIA SOURCE ENCIRCLED] | ARCHITECT: machackabook | NUMERAL 137451921129154222
