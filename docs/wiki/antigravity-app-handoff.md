# Antigravity App Handoff

## Intended use
Use Antigravity App as a structured operator shell around the local Pixelle-Video services.

## Starter surface
- Adapter folder: `adapters/antigravity-app/`
- Shared bootstrap: `adapters/shared/start-pixelle.ps1`
- Shared healthcheck: `adapters/shared/check_pixelle_health.py`

## Working assumptions
- Use the fork as the only owned surface
- Keep Antigravity instructions additive to upstream runtime
- Prefer local API/Web health checks before any higher-level orchestration

## Verification
- Shared PowerShell bootstrap script parses successfully
- Shared Python healthcheck script compiles successfully
- Adapter files are additive only and do not change upstream runtime code
