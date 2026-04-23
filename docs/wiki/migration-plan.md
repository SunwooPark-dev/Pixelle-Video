# Migration Plan

## Classification
- `partial_migration_needed`

## Core reusable assets
- `api/`
- `web/`
- `pixelle_video/`
- `docker-compose.yml`
- `Dockerfile`
- `config.example.yaml`
- `README.md` / `README_EN.md`

## Assets to preserve unchanged
- Upstream application/runtime code
- Existing startup paths
- Existing configuration model
- Existing git history from upstream

## Assets to adapt
- Operator-facing prompts and handoff docs
- Environment-specific startup instructions
- Shared helper scripts for cross-tool reuse

## Assets to exclude
- Upstream ownership model for contribution
- Any assumption that work should go back to upstream by default
- Any environment-specific behavior not needed for the three requested targets

## Target-specific replacements
- Codex-specific instructions move into `adapters/codex/AGENTS.md`
- Antigravity-specific instructions move into `adapters/antigravity/ANTIGRAVITY_PROMPT.md`
- Gemini-specific instructions move into `adapters/gemini/GEMINI_PROMPT.md`

## Minimal additive adapter strategy
1. Preserve upstream app/runtime as-is on the fork
2. Add additive starter adapter files under `adapters/`
3. Use shared bootstrap helpers that point to real upstream startup surfaces:
   - `docker compose up -d`
   - `uv run python api/app.py`
   - `uv run streamlit run web/app.py`
4. Keep target-specific instructions in adapter files and handoff docs
5. Avoid destructive restructuring on first import

## Verification checklist before commit
- Required decision doc exists at `docs/migration/IMPORT_DECISION.md`
- Exact target files exist under `adapters/codex/`, `adapters/antigravity/`, `adapters/gemini/`
- Shared helper scripts parse/compile successfully
- Git remotes still point to fork + upstream correctly

## Success bar
- Forked repo remains cleanly runnable through upstream entrypoints
- New adapter files are immediately usable as a starting point
- Shared helper scripts are non-destructive and explicit about required config
