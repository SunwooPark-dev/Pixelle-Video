# Project Start — Fork Import and Adapter Scaffold

## Context
- Date: 2026-04-23
- Upstream: `AIDC-AI/Pixelle-Video`
- Working fork: `SunwooPark-dev/Pixelle-Video`
- Ownership rule: all work stays on the fork and fork branches only; no upstream PRs.

## Compatibility review result
- Classification: `partial_migration_needed`

## Why this repo is worth importing
- Apache-2.0 license
- Active upstream with recent updates
- Clear Python/FastAPI/Streamlit/Docker runtime
- Existing local and cloud execution surfaces
- Good fit for additive agent-environment adapters

## Scope for this slice
- Import safely via `fork + clone`
- Keep upstream runtime behavior unchanged
- Add starter adapter files for:
  - Codex App
  - Antigravity App
  - Gemini terminal workflow
- Add shared bootstrap/healthcheck helpers

## Non-goals
- No upstream PRs
- No large refactor of app/runtime
- No claim that adapters are production-ready beyond baseline starter usage

## Initial risks
- Upstream depends on local or cloud media backends (ComfyUI / RunningHub / API keys)
- Adapter files can only provide a starter surface until local credentials and services are configured
- Repo has no built-in AGENTS.md / adapter conventions, so handoff docs must be explicit
