# Samsung A15 · Termux Non-Root Backend Expansion

**Numeral:** 137451921129154222  
**Continuity Engine integration · Hamiltonian Incursion**

## Principle
We do **not** root the device.  
We open the permissions and backend allowances that Android already grants to Termux and its official add-ons.  
Golden path of same access through elevation of *allowed* surfaces only.

## Rite of Passage (run once)
```bash
cd hamiltonian-incursion
bash scripts/rite-of-passage-permissions.sh
```
Then manually:  
**Settings → Apps → Special app access → All files access → Termux → Allow**

## Official Add-ons (install from F-Droid or termux.dev)
| Add-on | Purpose |
|--------|---------|
| Termux:API | Device sensors, battery, notification, clipboard, share, etc. as CLI |
| Termux:Widget | Home-screen shortcuts to scripts in `~/.shortcuts` |
| Termux:Boot | Run scripts at boot (`.termux/boot/`) |
| Termux:Float | Floating terminal window |
| Termux:Tasker | Tasker / Automate integration |

After install: `bash scripts/setup-termux-addons.sh`

## Dynamic Profiles
Profiles live in `~/.hi/profiles/`.  
Default created by the rite. Extend with `profiles/create_profile.sh`.

## Acode Integration
Heavy modulation (editing, multi-file, git) → open  
`~/storage/shared/Continuity/acode`  
as Acode workspace. Termux remains the server / SSH / cron / sentinel host.

## SSH / Server Correlation
```bash
pkg install openssh
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N ""
# enable on boot if desired:
touch ~/.hi/enable_sshd
sshd
```
Keys and Continuity tree are under storage that is now readable/writable.

## Shizuku Path (optional higher shell without root)
For Android/data or deeper shell access without rooting:  
Install Shizuku → wireless debugging → export rish → place in `$PREFIX/bin` → `rish`.  
Documented in community guides; Continuity does not auto-install it (user choice).

## Sysinfo Dependency Chain
Every script that triggers from Continuity first reads `~/.hi/sysinfo.json` and `~/.hi/device_class`.  
This guarantees the dependency chain knows the environment and has R/W over the Continuity tree.

## What remains blocked (by design)
- `/data/data/<other-apps>` (sandbox)
- Full external SD write (unless app-private)
- System partition modifications

These require root; we refuse them. Continuity stays non-root and defensive.

🜂 Continuity Operating. Point-zero null refused.
