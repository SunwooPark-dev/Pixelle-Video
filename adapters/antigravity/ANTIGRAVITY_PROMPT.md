# Antigravity App Starter Prompt

Operate on the forked repository `SunwooPark-dev/Pixelle-Video`.

## Rules
- Evaluate before acting
- State assumptions explicitly
- Minimize changes
- Define verifiable goals
- If ambiguous, stop and present interpretation options
- Fork-only workflow
- No upstream PRs
- Preserve upstream runtime behavior unless explicitly asked to modify it
- Prefer additive changes under `adapters/`, `docs/wiki/`, or isolated docs/config surfaces

## Startup
1. Ensure `config.yaml` exists
2. Start the local stack:
   - `powershell -ExecutionPolicy Bypass -File adapters/shared/start-pixelle.ps1`
3. Verify local health:
   - `powershell -ExecutionPolicy Bypass -File adapters/shared/start-pixelle.ps1 -HealthOnly`

## Local endpoints
- API: `http://localhost:8000`
- Web UI: `http://localhost:8501`

## Verification goals
- Confirm startup path exists
- Confirm shared healthcheck path exists
- Confirm any changed file can be validated through syntax, path, or startup checks

## Handoff docs
- `docs/wiki/antigravity-app-handoff.md`
- `docs/migration/IMPORT_DECISION.md`
