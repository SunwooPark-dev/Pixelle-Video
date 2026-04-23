# Gemini Terminal Workflow Handoff

## Intended use
Use Gemini terminal workflow as a terminal-first orchestrator against the local Pixelle-Video fork.

## Starter surface
- Adapter folder: `adapters/gemini-terminal/`
- Shared bootstrap: `adapters/shared/start-pixelle.sh`
- Shared healthcheck: `adapters/shared/check_pixelle_health.py`

## Working assumptions
- Gemini terminal will work best with explicit shell commands and prompt context
- Shared bootstrap/healthcheck scripts should be the first entrypoints
- Keep all ownership on the fork and local clone

## Verification
- Shared shell bootstrap script parses successfully under WSL bash
- Shared Python healthcheck script compiles successfully
- Local ownership remains fork-only with upstream kept as a read-only remote
