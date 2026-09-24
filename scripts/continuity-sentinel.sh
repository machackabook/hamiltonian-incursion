#!/data/data/com.termux/files/usr/bin/bash
# Hamiltonian Incursion — Termux / A15 Controller Sentinel
# Defensive only. Numeral origin: 137451921129154222
set -euo pipefail

REPO="${HOME}/strange-loop-a15-controller"
LEDGER="${REPO}/continuity_ledger.jsonl"
REMEDY="${REPO}/.github/remedy"
SCANS="${REPO}/scans"
TRIGGER="<errordetected>"
NUMERAL="137451921129154222"
AGENT_SCRIPT="${REPO}/agents/error_corrector.py"

mkdir -p "$REMEDY" "$SCANS" "$(dirname "$LEDGER")"
cd "$REPO" || exit 1

log_anomaly() {
  local msg="$1"
  local ts
  ts=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
  echo "{\"ts\":\"$ts\",\"agent\":\"sentinel\",\"numeral\":\"$NUMERAL\",\"msg\":$(echo "$msg" | jq -R -s .)}" >> "$LEDGER"
}

# 1. Sync pull
if ! git pull --ff-only origin main 2>&1 | tee /tmp/hi-pull.log; then
  log_anomaly "$TRIGGER pull-failed"
fi

# 2. Scan for red errors in recent logs / notifications
ERRORS=""
if command -v termux-notification-list >/dev/null 2>&1; then
  ERRORS=$(termux-notification-list 2>/dev/null | jq -r '.[] | select(.content|test("error|fail|exception|denied|crash";"i")) | .content' || true)
fi
if [[ -z "$ERRORS" ]]; then
  ERRORS=$(grep -iE 'error|fail|exception|denied' /tmp/hi-pull.log 2>/dev/null || true)
fi

if [[ -n "$ERRORS" ]]; then
  log_anomaly "$TRIGGER share-or-log"
  HASH=$(echo "$ERRORS" | sha256sum | cut -c1-12)
  CARD="${REMEDY}/card-${HASH}.md"
  if [[ ! -f "$CARD" ]]; then
    cat > "$CARD" << EOF
# Remedy Card ${HASH}
Status: OPEN
First_Seen: $(date -u +"%Y-%m-%dT%H:%M:%SZ")
Runs: 0
Consecutive_Failures: 0
Strength: 0.0
Source: share-session / log-scrape
Raw:
\`\`\`
${ERRORS}
\`\`\`
Agent: pending
EOF
    git add "$CARD"
    git commit -m "[hi] auto-card ${HASH} ${TRIGGER}" || true
    git push origin main || log_anomaly "push-failed-after-card"
  fi
fi

# 3. Run all scanning concepts (double fallbacks)
for scan in "$SCANS"/*.sh; do
  [[ -f "$scan" ]] || continue
  if ! bash "$scan" >> /tmp/hi-scan.log 2>&1; then
    log_anomaly "$TRIGGER scan-failed $(basename "$scan")"
  fi
done

# 4. Agent correction loop
if grep -q "$TRIGGER" "$LEDGER" 2>/dev/null; then
  if [[ -f "$AGENT_SCRIPT" ]]; then
    python3 "$AGENT_SCRIPT" --ledger "$LEDGER" --remedy "$REMEDY" --numeral "$NUMERAL" || log_anomaly "agent-execution-failed"
  fi
fi

# 5. Battery-change telemetry channel (defensive intercept)
# This is registered separately via termux-job-scheduler or broadcast receiver
# Placeholder for encoded message generation
