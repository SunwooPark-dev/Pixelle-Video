# Codex Adapter AGENTS

This subtree is the Codex-specific starter surface for operating the forked repository.

## Scope
- Applies to `adapters/codex/` and its children only

## Ownership
- Work only on the forked repo `SunwooPark-dev/Pixelle-Video`
- Do not prepare or open upstream PRs

## Operating rules
- Think before acting
- Minimum viable implementation first
- Only modify what is necessary
- Verification before completion
- Ask when uncertainty materially affects correctness
- No unnecessary refactors

## Startup rule
- Prefer the shared starter helpers in `adapters/shared/`
- Recommended first commands:
  - `powershell -ExecutionPolicy Bypass -File adapters/shared/start-pixelle.ps1`
  - `powershell -ExecutionPolicy Bypass -File adapters/shared/start-pixelle.ps1 -HealthOnly`

## Change rule
- Prefer additive changes over runtime refactors
- Keep target-specific logic inside `adapters/` or docs unless explicitly asked otherwise
- Respect existing structure and upstream runtime boundaries

## Verification rule
- Verify changed artifacts before reporting completion
- For adapter-only changes, verify at least:
  - file existence
  - syntax/parsing where applicable
  - path references to real local startup surfaces

## Handoff
- See `adapters/codex-app/starter-prompt.md` and `docs/wiki/codex-app-handoff.md`
