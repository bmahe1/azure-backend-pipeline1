#!/bin/bash
set -euo pipefail
if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <image> <namespace>"
  exit 1
fi
IMAGE="$1"
NS="$2"

echo "Building kustomize overlay with image $IMAGE for namespace $NS"
pushd deployment/overlays/production > /dev/null
kustomize edit set image knowledgecity-backend=$IMAGE || true
kubectl apply -k . -n $NS
popd > /dev/null

echo "Deployment triggered"
