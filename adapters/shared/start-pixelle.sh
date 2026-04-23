#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/../.." && pwd)"
CONFIG_PATH="${REPO_ROOT}/config.yaml"
CONFIG_EXAMPLE_PATH="${REPO_ROOT}/config.example.yaml"

if [[ ! -f "${CONFIG_PATH}" ]]; then
  cp "${CONFIG_EXAMPLE_PATH}" "${CONFIG_PATH}"
  echo "Created config.yaml from config.example.yaml. Fill in your API/service keys before serious use."
fi

if [[ "${1:-}" == "--health-only" ]]; then
  python "${SCRIPT_DIR}/check_pixelle_health.py"
  exit $?
fi

if [[ "${1:-}" == "--api-only" ]]; then
  echo "Starting Pixelle API only..."
  uv run python api/app.py --host 0.0.0.0 --port 8000
  exit $?
fi

echo "Starting Pixelle via docker compose..."
docker compose up -d || {
  echo "docker compose failed. Fallback commands:"
  echo "  uv run python api/app.py --host 0.0.0.0 --port 8000"
  echo "  uv run streamlit run web/app.py --server.port 8501 --server.address 0.0.0.0"
  exit 1
}

python "${SCRIPT_DIR}/check_pixelle_health.py"
