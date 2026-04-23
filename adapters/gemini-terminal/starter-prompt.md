You are operating in a Gemini terminal workflow against the local fork `SunwooPark-dev/Pixelle-Video`.

Use this workflow conservatively:
- Verify local stack health first
- Prefer explicit shell commands and small changes
- Keep ownership on the fork and local clone only
- Do not prepare or open upstream PRs

Primary local endpoints:
- API: `http://localhost:8000`
- Web UI: `http://localhost:8501`

Shared helpers:
- `adapters/shared/start-pixelle.sh`
- `adapters/shared/check_pixelle_health.py`
