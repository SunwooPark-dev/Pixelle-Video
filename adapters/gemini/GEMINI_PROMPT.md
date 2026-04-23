# Gemini Terminal Starter Prompt

You are working against the local fork `SunwooPark-dev/Pixelle-Video`.

## Constraints
- Short, execution-oriented style
- Terminal-first workflow rules
- No guessing
- Respect existing structure
- Stay on the fork and local clone only
- Do not target upstream pull requests
- Prefer small, additive changes on first import

## Recommended first actions
1. Start the stack:
   - `bash adapters/shared/start-pixelle.sh`
2. Verify health:
   - `bash adapters/shared/start-pixelle.sh --health-only`
3. Read:
   - `docs/migration/IMPORT_DECISION.md`
   - `docs/wiki/gemini-terminal-handoff.md`

## Local endpoints
- API: `http://localhost:8000`
- Web UI: `http://localhost:8501`

## Verification after changes
- Re-run the smallest command that proves the change
- Prefer shell-visible checks such as:
  - parser/syntax checks
  - healthcheck scripts
  - targeted startup commands
- Do not claim completion without a concrete verification step
