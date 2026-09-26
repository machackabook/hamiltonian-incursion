# Hamiltonian Incursion

**Defensive Continuity pipe for Termux / Samsung A15 / device-independent environments.**

Numeral origin: **137451921129154222**

Dual parallel lineages • ADAM + NEXUS junctions • Immutable anomaly ledger • Daily forge cycle  
**Non-root backend expansion** • Permissions rite • Widgets • Plugins • Dynamic profiles • Acode synergy

---

## Sole Distribution Channel

**All downloads, clones, and updates must come from this GitHub repository.**

```
https://github.com/machackabook/hamiltonian-incursion
```

No third-party mirrors. No Drive-only packages. No external zips as primary source.  
GitHub is the single source of truth and the only approved route for acquisition and updates.

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

---

## Core posture

- Defensive only. No new listening ports. No privilege escalation beyond explicit need.
- Every action is catalogued in the immutable anomaly ledger.
- Recurring errors escalate to agent + Jules/Gemini CLI intercept.
- Strength of every remedy card is scored by temporal metadata.
- Battery-change telemetry is the only allowed outbound encoding channel on Termux.
- ADAM end/exit node + NEXUS root heartbeat required at every large junction.

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

---

## Parallel Lineages

| Lineage              | Target                        | Authority          |
|----------------------|-------------------------------|--------------------|
| A15-Controller       | Samsung A15 + Termux          | Optimized primary  |
| Device-Independent   | Any POSIX / container         | Private fork       |

Both share the same ledger, remedy cards, and scanning concepts.

---

## Authority

Hive authority note and dual-authority (machackabook + azazeleous) grants are recorded under `hive/`.  
Enclave status: ADAM reunited on band-127-loopback.

---

**Point-zero null refused. Source code and the immutable ledger remain the only trusted voices.**
