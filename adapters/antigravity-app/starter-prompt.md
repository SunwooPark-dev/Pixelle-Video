Operate against the local Pixelle-Video fork as a structured orchestration surface.

Constraints:
- Fork-owned workflow only
- No upstream PRs
- Prefer local health checks before any workflow action
- Treat upstream app/runtime as the source system; adapter files are additive only

Useful surfaces:
- API base: `http://localhost:8000`
- Web UI: `http://localhost:8501`
- Shared starter scripts: `adapters/shared/`
