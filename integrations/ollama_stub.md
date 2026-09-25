# Ollama Integration Stub — Local Only

**Hamiltonian Incursion / Azazel**

Numeral: 137451921129154222

## Posture
- Strictly local inference.
- No automatic network exposure.
- No new listening ports opened by this integration.
- User must explicitly start `ollama serve` if desired.

## Recommended local setup (Termux / proot or native if available)

```bash
# Install (example — adjust for current Termux packages or proot-distro)
pkg install golang git || true
# Follow official Ollama install docs for the environment you are using.
# Then:
ollama serve &          # only if you choose to run it
ollama pull llama3.2    # or smaller model suitable for device
```

## Defensive wrapper example

```bash
# az-ollama — only talks to localhost
az-ollama() {
  curl -s http://127.0.0.1:11434/api/generate -d "{\"model\":\"llama3.2\",\"prompt\":\"$1\",\"stream\":false}" | jq -r .response
}
```

## Continuity note
Any model output that triggers `<errordetected>` patterns is still routed through the sentinel and remedy-card system.
No model is granted privilege escalation or automatic code execution.
