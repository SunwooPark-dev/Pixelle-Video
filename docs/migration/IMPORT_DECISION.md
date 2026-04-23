# IMPORT_DECISION

## Phase 1 — Multi-target Compatibility Review

### Repository reviewed
- Source repo: `https://github.com/AIDC-AI/Pixelle-Video`
- Owned workflow target: `https://github.com/SunwooPark-dev/Pixelle-Video`
- Default ownership boundary: fork only, no upstream PRs

### Required review tasks completed
1. Inspected repository structure and docs
2. Evaluated compatibility for:
   - Codex App
   - Antigravity App
   - Gemini terminal workflow
3. Produced one overall verdict
4. Wrote a migration plan because verdict is `partial_migration_needed`
5. Recommended one import strategy

## Why the repo was imported
- The repo already contains a real, runnable media-generation application rather than only prompts or docs
- The core runtime and workflow are reusable inside a fork-owned ecosystem
- Adapter work can stay additive on first import

## Core value classification
- Primary value: **mixed**
  - **Code**: real Python/FastAPI/Streamlit application and service logic
  - **Workflow**: reusable startup/config/runtime flow using Docker or `uv`
  - **Documentation**: setup and operational docs with config examples

## What reusable value was preserved
- Application code under `api/`, `web/`, and `pixelle_video/`
- Existing Docker / `uv` startup paths
- Existing config example and local/cloud backend model
- Existing docs and operational structure

## Environment analysis

### What parts are Claude-specific
- No strong Claude-specific structural dependency was found in the upstream repo itself
- The repository’s value does **not** collapse if Claude-specific assumptions are removed

## What Claude-specific elements were removed or replaced
- No upstream Claude-bound runtime was preserved as a dependency
- Environment-specific assumptions were replaced with additive adapter prompts and handoff files
- Reuse now flows through shared bootstrap helpers and target-specific starter surfaces instead of any Claude-only execution assumption

### What parts are Codex-friendly
- Clear shell-startable runtime
- Local fork workflow is straightforward
- Python/Docker surfaces are easy to wrap with Codex-specific handoff files

### What parts are reusable in Gemini terminal workflow
- Shell-first startup
- API/Web healthcheck flow
- Config-driven local operation
- Readable prompt/handoff docs

### What parts are reusable across all three targets
- Shared bootstrap path
- Shared healthcheck path
- Shared fork-ownership rule
- Shared config/bootstrap assumptions

## What is shared across all 3 targets
- The same fork-owned repository and remotes
- The same shared bootstrap helpers in `adapters/shared/`
- The same local API/Web endpoints
- The same additive-first migration strategy

### What parts are only valid in one environment
- `adapters/codex/AGENTS.md` is Codex-specific
- `adapters/antigravity/ANTIGRAVITY_PROMPT.md` is Antigravity-specific
- `adapters/gemini/GEMINI_PROMPT.md` is Gemini-specific

## What is target-specific
- Codex App uses `adapters/codex/AGENTS.md`
- Antigravity App uses `adapters/antigravity/ANTIGRAVITY_PROMPT.md`
- Gemini terminal workflow uses `adapters/gemini/GEMINI_PROMPT.md`

## Overall verdict
- Verdict: **`partial_migration_needed`**

## Why not `directly_usable`
- The upstream repo is runnable, but it does not ship native starter adapters for the three requested operator environments
- Tool/environment-specific prompts and handoff files are needed for practical immediate reuse
- External dependency weight is non-trivial: Docker, ffmpeg, ComfyUI and/or RunningHub, API credentials

## Why not `not_recommended`
- The core repo value is not bound to Claude-only execution
- The application and workflow remain valuable after removing Claude-specific assumptions
- Migration cost is moderate and mostly additive

## Migration plan
- See: `docs/wiki/migration-plan.md`

## Recommended import strategy
- Strategy: **`fork + clone`**

## Execution gate decision
- Allowed to proceed: **yes**
  - verdict is `partial_migration_needed`
  - import strategy is `fork + clone`

## Practical reuse decision
- Import recommended: **yes**
- Conservative mode: **additive structure only on first import**

## How to use the repo in Codex App
1. Open the local fork
2. Run `powershell -ExecutionPolicy Bypass -File adapters/shared/start-pixelle.ps1`
3. Run `powershell -ExecutionPolicy Bypass -File adapters/shared/start-pixelle.ps1 -HealthOnly`
4. Follow `adapters/codex/AGENTS.md` and `adapters/codex-app/starter-prompt.md`

## How to use the repo in Antigravity App
1. Open the local fork
2. Run the shared PowerShell bootstrap
3. Use `adapters/antigravity/ANTIGRAVITY_PROMPT.md` as the starter instruction surface
4. Refer to `docs/wiki/antigravity-app-handoff.md`

## How to use the repo in Gemini terminal workflow
1. Open the local fork in a terminal-first workflow
2. Run `bash adapters/shared/start-pixelle.sh`
3. Run `bash adapters/shared/start-pixelle.sh --health-only`
4. Use `adapters/gemini/GEMINI_PROMPT.md` as the starter prompt
