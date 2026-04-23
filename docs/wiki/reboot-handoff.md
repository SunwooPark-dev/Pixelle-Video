# Reboot Handoff

## Current state
- Repo: `SunwooPark-dev/Pixelle-Video`
- Local path: `C:\Users\sunwo\workspace\Pixelle-Video`
- Branch: `adapter-starters`
- Internal PR: `https://github.com/SunwooPark-dev/Pixelle-Video/pull/1`

## Completed
- Compatibility review completed with verdict `partial_migration_needed`
- Import completed via `fork + clone`
- Exact Phase 2A adapter folders/files created
- Shared starter scripts added and syntax-checked
- Import decision and migration plan documented

## Last verified
- `python -m py_compile adapters/shared/check_pixelle_health.py`
- PowerShell parse OK for `adapters/shared/start-pixelle.ps1`
- WSL bash parse OK for `adapters/shared/start-pixelle.sh`
- Fork branch pushed successfully

## First step after reboot
1. Open `C:\Users\sunwo\workspace\Pixelle-Video`
2. Confirm branch is still `adapter-starters`
3. Review or merge internal PR #1
4. Fill `config.yaml` with real credentials/backends
5. Run shared bootstrap:
   - Windows: `powershell -ExecutionPolicy Bypass -File adapters/shared/start-pixelle.ps1`
   - WSL/shell: `bash adapters/shared/start-pixelle.sh`

## Remaining manual work
- Decide whether to merge PR #1 as-is or after another review pass
- Configure runtime dependencies: Docker, ffmpeg, ComfyUI and/or RunningHub, API credentials
- Perform first real health/startup run with configured services
