#!/bin/bash
set -euo pipefail
IMAGE=${1:-}
if [ -z "$IMAGE" ]; then
  echo "Usage: $0 <image:tag>"
  exit 1
fi
echo "Running trivy scan on $IMAGE"
trivy image --severity HIGH,CRITICAL --no-progress --exit-code 1 $IMAGE || true
