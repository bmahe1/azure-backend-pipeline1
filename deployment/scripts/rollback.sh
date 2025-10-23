#!/bin/bash
set -euo pipefail
NS=${1:-knowledgecity}
# This is a placeholder: implement rollback strategy (kubectl rollout undo)
kubectl rollout undo deployment/knowledgecity-backend -n $NS
