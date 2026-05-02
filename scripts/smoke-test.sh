#!/usr/bin/env bash
# Smoke test for REPLACE_COMPONENT_NAME
# Usage: ./smoke-test.sh <public-ip>
set -euo pipefail

IP="${1:?Usage: smoke-test.sh <public-ip>}"

echo "Running smoke tests against $IP..."

# TODO: Add component-specific health checks
curl --fail --silent --max-time 10 "http://$IP/health" > /dev/null \
  && echo "PASS: /health" \
  || echo "FAIL: /health"

echo "Smoke tests complete."
