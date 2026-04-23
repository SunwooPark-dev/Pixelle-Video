# Codex App Starter Adapter

## Goal
Use Codex App as an operator for the local Pixelle-Video fork.

## Quick start
1. Open the fork root in Codex App
2. Review `starter-prompt.md`
3. Bootstrap the local stack:
   - Windows: `powershell -ExecutionPolicy Bypass -File adapters/shared/start-pixelle.ps1`
4. Confirm health:
   - `powershell -ExecutionPolicy Bypass -File adapters/shared/start-pixelle.ps1 -HealthOnly`

## What this adapter assumes
- You are operating on `SunwooPark-dev/Pixelle-Video`
- You will not open PRs to upstream
- You will use local API/Web surfaces exposed by upstream runtime
