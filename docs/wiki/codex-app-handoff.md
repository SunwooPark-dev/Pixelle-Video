# Codex App Handoff

## Intended use
Use Codex App as an operator/orchestrator around the local Pixelle-Video stack.

## Starter surface
- Adapter folder: `adapters/codex-app/`
- Shared bootstrap: `adapters/shared/start-pixelle.ps1`
- Shared healthcheck: `adapters/shared/check_pixelle_health.py`

## Working assumptions
- The app/API stay upstream-compatible
- Codex App works against the local fork, not upstream
- Primary operator flow is:
  1. ensure `config.yaml`
  2. start stack
  3. verify health
  4. use starter prompt to drive tasks against API/Web UI

## Verification
- Shared PowerShell bootstrap script parses successfully
- Shared Python healthcheck script compiles successfully
- Fork clone has `origin` = `SunwooPark-dev/Pixelle-Video` and `upstream` = `AIDC-AI/Pixelle-Video`
