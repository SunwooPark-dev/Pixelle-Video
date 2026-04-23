param(
  [switch]$HealthOnly,
  [switch]$ApiOnly
)

$repoRoot = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent
$configPath = Join-Path $repoRoot 'config.yaml'
$configExamplePath = Join-Path $repoRoot 'config.example.yaml'

if (-not (Test-Path $configPath)) {
  Copy-Item $configExamplePath $configPath
  Write-Host "Created config.yaml from config.example.yaml. Fill in your API/service keys before serious use."
}

if ($HealthOnly) {
  python (Join-Path $PSScriptRoot 'check_pixelle_health.py')
  exit $LASTEXITCODE
}

if ($ApiOnly) {
  Write-Host "Starting Pixelle API only..."
  uv run python api/app.py --host 0.0.0.0 --port 8000
  exit $LASTEXITCODE
}

Write-Host "Starting Pixelle via docker compose..."
  docker compose up -d
if ($LASTEXITCODE -ne 0) {
  Write-Host "docker compose failed. Fallback commands:"
  Write-Host "  uv run python api/app.py --host 0.0.0.0 --port 8000"
  Write-Host "  uv run streamlit run web/app.py --server.port 8501 --server.address 0.0.0.0"
  exit $LASTEXITCODE
}

python (Join-Path $PSScriptRoot 'check_pixelle_health.py')
exit $LASTEXITCODE
