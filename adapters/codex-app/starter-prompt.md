You are operating on the forked repository `SunwooPark-dev/Pixelle-Video`.

Rules:
- Work on the fork only.
- Do not target upstream PRs.
- Preserve upstream runtime behavior unless explicitly asked to modify it.
- Prefer additive changes under `adapters/`, `docs/wiki/`, or other clearly isolated surfaces.

Startup expectations:
- `config.yaml` exists (copy from `config.example.yaml` if needed)
- Local services should normally be reachable at:
  - API: `http://localhost:8000`
  - Web: `http://localhost:8501`

Recommended first actions:
1. Run the shared bootstrap/healthcheck helpers
2. Verify API/Web health
3. Only then begin operator tasks against Pixelle-Video
