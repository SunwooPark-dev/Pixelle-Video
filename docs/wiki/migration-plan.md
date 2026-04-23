# Migration Plan

## Classification
- `partial_migration_needed`

## Plan
1. Preserve upstream app/runtime as-is on the fork
2. Additive-only starter adapter layer under `adapters/`
3. Shared bootstrap helpers point to real upstream startup surfaces:
   - `docker compose up -d`
   - `uv run python api/app.py`
   - `uv run streamlit run web/app.py`
4. Create target-specific handoff docs and starter prompts
5. Verify adapter syntax and local path references
6. Record finish-phase verification and remaining risks in repo wiki

## Adapter targets
- Codex App
- Antigravity App
- Gemini terminal workflow

## Success bar
- Forked repo remains cleanly runnable through upstream entrypoints
- New adapter files are immediately usable as a starting point
- Shared helper scripts are non-destructive and explicit about required config
