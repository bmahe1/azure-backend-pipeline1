#!/bin/bash
set -euo pipefail
RG=${1:-knowledgecity-rg}
CLUSTER=${2:-knowledgecity-aks}
az aks create -g $RG -n $CLUSTER --node-count 2 --generate-ssh-keys --enable-addons monitoring
az aks get-credentials -g $RG -n $CLUSTER
echo "AKS cluster ready and kubeconfig updated"
