# Antigravity App Starter Adapter

## Goal
Provide a minimal Antigravity-facing handoff surface for operating the local Pixelle-Video fork.

## Quick start
1. Start the local stack with:
   - `powershell -ExecutionPolicy Bypass -File adapters/shared/start-pixelle.ps1`
2. Use `starter-prompt.md` as the initial operator context
3. Keep all code changes isolated to the fork

## Healthcheck
- `powershell -ExecutionPolicy Bypass -File adapters/shared/start-pixelle.ps1 -HealthOnly`
