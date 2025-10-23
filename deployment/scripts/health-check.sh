#!/bin/bash
set -euo pipefail
NS=${1:-knowledgecity}
kubectl get pods -n $NS -l app=knowledgecity-backend -o wide
