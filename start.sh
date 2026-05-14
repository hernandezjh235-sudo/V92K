#!/usr/bin/env sh
set -eu
PORT="${PORT:-8501}"
echo "Starting Streamlit on 0.0.0.0:${PORT}"
exec python -m streamlit run app.py \
  --server.address=0.0.0.0 \
  --server.port="${PORT}" \
  --server.headless=true \
  --browser.gatherUsageStats=false \
  --server.enableCORS=false \
  --server.enableXsrfProtection=false
